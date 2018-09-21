{-# LANGUAGE OverloadedStrings #-}
module Pkb.Lib.Frontmatter where

import           Control.Applicative              ((*>))
import           Data.Attoparsec.ByteString
import           Data.Attoparsec.ByteString.Char8
import           Data.ByteString                  (ByteString)
import qualified Data.ByteString.Char8            as ByteString (pack)
import           Data.Attoparsec.ByteString
import           Data.Yaml                  (FromJSON, Value, decodeEither)
import qualified Data.Text as T

-- |
-- A parser for a frontmatter; returns it as a 'ByteString'. Doesn't fail even
-- if it's empty. When it fails; returns a a IResult with the whole input
-- rather than consuming it.
frontmatter :: Parser ByteString
frontmatter = frontmatter' <?> "frontmatter"
  where
    frontmatter' = do
        f <- frontmatterSeparator *> manyTill anyChar frontmatterSeparator
        return $ ByteString.pack f

-- |
-- Internal parser for the frontmatter separator
frontmatterSeparator :: Parser ()
frontmatterSeparator = string "---" >> endOfLine

-- |
-- 'parseYamlFrontmatter' but returning an 'Either'
parseYamlFrontmatterEither :: FromJSON a => ByteString -> Either String a
parseYamlFrontmatterEither = eitherResult . parse frontmatterYaml

parseYamlFrontmatterMaybe :: FromJSON a => ByteString -> Maybe a
parseYamlFrontmatterMaybe = maybeResult . parse frontmatterYaml

-- |
-- Parse a frontmatter from a 'ByteString' returning a 'FromJSON a'. Will parse
-- both JSON and YAML.
parseYamlFrontmatter :: FromJSON a => ByteString -> Result a
parseYamlFrontmatter = parse frontmatterYaml

-- |
-- Parses a YAML frontmatter or JSON frontmatter from a 'ByteString' as a
-- 'Value'. Because of how @Data.Yaml@ is implemented using @aeson@, this will
-- succeed for JSON frontmatters as well as YAML ones.
frontmatterYaml :: FromJSON a => Parser a
frontmatterYaml = frontmatterYaml' <?> "frontmatterYaml"
  where
    frontmatterYaml' = do
        f <- frontmatter
        case decodeEither f of
            Left e -> fail e
            Right v -> return v

-- fmap (maybe ["Default Title"] tags) ((fmap parseYamlFrontmatterMaybe (Data.ByteString.readFile "pages/algorithm/sorting.md")) :: (IO (Maybe PageMetaData)))
