// todo can be used with https://www.flutterclutter.dev/flutter/basics/clone-copy-objects-in-dart/2020/1851/
//  but give it a try on a null-safety-sound project. Otherwise ? sign can clutter state models and whole solution can work,
//  but becomes unreadable.
class Nullable<T> {
  final T _value;

  Nullable(this._value);

  T get value {
    return _value;
  }

  get organisations => null;
}
