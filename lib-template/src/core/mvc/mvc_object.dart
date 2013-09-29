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

@wrapper @skipConstructor abstract class MVCObject extends jsw.TypedJsObject {
  MVCObject([js.Serializable<js.JsFunction> constructor, List args]) : super(constructor != null ? constructor : maps['MVCObject'], args);
  MVCObject.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);

  MapsEventListener addListener(String eventName, Function handler);
  void bindTo(String key, MVCObject target, [String targetKey, bool noNotify]);
  void changed(String key);
  Object get(String key);
  void notify(String key);
  void set(String key, Object value);
  @forMethods set values(Map<String, Object> values);
  void unbind(String key);
  void unbindAll();
}