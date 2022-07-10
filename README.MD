# OneOf/AnyOf 

- [one_of on pub.dev](https://pub.dev/packages/one_of)
- [one_of_serializer on pub.dev](https://pub.dev/packages/one_of_serializer)

# About

dart equivalent to [C#'s OneOf](https://github.com/mcintyre321/OneOf)

This package was created to help [implement polymorphism into the dart-dio openapi-generator](https://github.com/OpenAPITools/openapi-generator/pull/12295)

It consists of 
1. `one_of`: the main package which provides the base logic for `anyOf` and `oneOf` implmentations,
2. `one_of_serializer`: a [`built_value`](https://pub.dev/packages/built_value) serializer.

# Contribution

You can introduce any new serializer you like in a separate package that depends on `one_of`.
The base classes you would need to implement are `OneOf` and `AnyOf`.

