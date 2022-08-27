module Test.MySolutions where

import Prelude

import Data.AddressBook (Entry, AddressBook)
import Data.List (filter, head, null, nubByEq)
import Data.Maybe (Maybe)

-- Note to reader: Add your solutions to this file
findEntryByStreet:: String -> AddressBook -> Maybe Entry
findEntryByStreet street = head <<< filter (eq street <<< _.address.street)

isInBook::String -> String -> AddressBook -> Boolean
isInBook firstName lastName = not null <<< filter \entry -> entry.firstName == firstName && entry.lastName == lastName

removeDuplicates::AddressBook -> AddressBook
removeDuplicates = nubByEq (\left right -> left.firstName == right.firstName && left.lastName == right.lastName)