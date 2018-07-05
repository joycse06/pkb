module Pkb.Lib.Markdown
(
  markdownToHtmlByCmark,
  rawMarkdownFromFile
)
where

import qualified Data.Text as T
import Data.Text.Lazy as TL
import CMark
import qualified Lucid.Base as Lucid
import qualified Text.Blaze.Html as BL
import CMark as CM
import Lucid
import Cheapskate
import Text.Blaze.Html.Renderer.Text

markdownToHtmlByCmark :: T.Text -> Html ()
markdownToHtmlByCmark sText = do
  renderNode [] (CM.commonmarkToNode [] sText)

rawMarkdownFromFile :: FilePath -> IO T.Text
rawMarkdownFromFile filePath = do
  contents <- readFile filePath
  let sText = T.pack contents
  return sText

toMarkdown :: Text -> BL.Html
toMarkdown sText = BL.toHtml . markdown def $ TL.toStrict sText

convertToHtml :: BL.Html -> T.Text
convertToHtml rawHtml = TL.toStrict $ renderHtml rawHtml

renderNode
  :: Monad m
  => [CMarkOption]       -- ^ Will usually be @[]@ or @['optSafe']@
  -> Node
  -> Lucid.HtmlT m ()
renderNode opts node = Lucid.toHtmlRaw (nodeToHtml opts node)

renderNodes
  :: Monad m
  => [CMarkOption]       -- ^ Will usually be @[]@ or @['optSafe']@
  -> [Node]
  -> Lucid.HtmlT m ()
renderNodes opts nodes = renderNode opts node
  where node = Node Nothing DOCUMENT nodes
