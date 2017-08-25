public final class Label: Tag {
    public let name = "label_strong"

    public func run(
        stem: Stem,
        context: Context,
        tagTemplate: TagTemplate,
        arguments: [Argument]) throws -> Any? {
        guard arguments.isEmpty else { throw "Label supports no arguments" }
        return nil
    }

    public func shouldRender(
        stem: Stem,
        context: Context,
        tagTemplate: TagTemplate,
        arguments: [Argument], value: Any?) -> Bool {
        return true
    }

    public func render(stem: Stem, context: Context, value: Any?, leaf: Leaf) throws -> Bytes {
        var buffer = "\n<Label><strong>".bytes
        buffer += try stem.render(leaf, with: context)
        buffer += "</strong></Label>\n".bytes
        return buffer
    }
}
