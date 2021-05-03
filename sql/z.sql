/******************************************************************************

Taken from

https://github.com/mapbox/postgis-vt-util/blob/master/src/Z.sql

Copyright (c), Mapbox All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

### Z ###
Returns a Web Mercator integer zoom level given a scale denominator.
Useful with Mapnik's !scale_denominator! token in vector tile source
queries.
__Parameters:__
- `numeric` scale_denominator - The denominator of the scale, eg `250000`
  for a 1:250,000 scale.
__Returns:__ `integer`
__Example Mapbox Studio query:__
```sql
( SELECT * FROM roads
  WHERE Z(!scale_denominator!) >= 12
) AS data
```
******************************************************************************/
create or replace function z (numeric)
  returns integer
  language sql
  immutable
  returns null on null input
as $func$
select
  case
    -- Don't bother if the scale is larger than ~zoom level 0
    when $1 > 600000000 or $1 = 0 then null
    else cast (round(log(2,559082264.028/$1)) as integer)
  end;
$func$;