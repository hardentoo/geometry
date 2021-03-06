-----------------------------------------------------------------------------
-- |
-- Module      :  Geometry.ThreeD.Vector
-- Copyright   :  (c) 2013-2017 diagrams team (see LICENSE)
-- License     :  BSD-style (see LICENSE)
-- Maintainer  :  diagrams-discuss@googlegroups.com
--
-- Three-dimensional vectors.
--
-----------------------------------------------------------------------------
module Geometry.ThreeD.Vector
  ( -- * Special 3D vectors
    unitX, unitY, unitZ, unit_X, unit_Y, unit_Z
  , xDir, yDir, zDir
  ) where

import           Control.Lens          ((&), (.~))

import           Geometry.ThreeD.Types
import           Geometry.TwoD.Vector
import           Geometry.Direction

import           Linear.Vector

-- | The unit vector in the positive Y direction.
unitZ :: (R3 v, Additive v, Num n) => v n
unitZ = zero & _z .~ 1

-- | The unit vector in the negative X direction.
unit_Z :: (R3 v, Additive v, Num n) => v n
unit_Z = zero & _z .~ (-1)

-- | A 'Direction' pointing in the Z direction.
zDir :: (R3 v, Additive v, Num n) => Direction v n
zDir = dir unitZ
