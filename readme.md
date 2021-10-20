# animatecss

Easily use [Animate.css](https://animate.style/) classes

## Example

```nim
doAssert animatecss(backInRight) == "animate__animated animate__backInRight"
# And with multiple
doAssert animatecss(backInRight, bounce) == "animate__animated animate__backInRight animate__bounce"
```

## TODO

- [ ] Add tests

## License

MIT
