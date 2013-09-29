// Copyright (c) 2012, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps;

class DistanceMatrixElementStatus extends IsEnum<String> {
  static final NOT_FOUND = new DistanceMatrixElementStatus._(maps['DistanceMatrixElementStatus']['NOT_FOUND']);
  static final OK = new DistanceMatrixElementStatus._(maps['DistanceMatrixElementStatus']['OK']);
  static final ZERO_RESULTS = new DistanceMatrixElementStatus._(maps['DistanceMatrixElementStatus']['ZERO_RESULTS']);

  static final _FINDER = new EnumFinder<String, DistanceMatrixElementStatus>([NOT_FOUND, OK, ZERO_RESULTS]);

  static DistanceMatrixElementStatus find(o) => _FINDER.find(o);

  DistanceMatrixElementStatus._(String value) : super(value);
}