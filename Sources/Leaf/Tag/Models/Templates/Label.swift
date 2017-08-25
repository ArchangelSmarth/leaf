public final class Label: Tag {
    public let name = "Label"


    public func run(
        tagTemplate: TagTemplate,
        arguments: ArgumentList) throws -> Node? {
        return nil
    }

    public func shouldRender(
        tagTemplate: TagTemplate,
        arguments: ArgumentList, value: Node?) -> Bool {
        return true
    }

    public func render(stem: Stem, context: Context, value: Node?, leaf: Leaf) throws -> Bytes {
        var buffer = "\n<Label><strong>".bytes
        buffer += try stem.render(leaf, with: context)
        buffer += "</strong></Label></br>\n".bytes
        return buffer
    }
}
