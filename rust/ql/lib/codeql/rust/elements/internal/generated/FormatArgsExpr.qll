// generated by codegen, do not edit
/**
 * This module provides the generated definition of `FormatArgsExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.Attr
import codeql.rust.elements.Expr
import codeql.rust.elements.internal.ExprImpl::Impl as ExprImpl
import codeql.rust.elements.Format
import codeql.rust.elements.FormatArgsArg

/**
 * INTERNAL: This module contains the fully generated definition of `FormatArgsExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A FormatArgsExpr. For example:
   * ```rust
   * format_args!("no args");
   * format_args!("{} foo {:?}", 1, 2);
   * format_args!("{b} foo {a:?}", a=1, b=2);
   * let (x, y) = (1, 42);
   * format_args!("{x}, {y}");
   * ```
   * INTERNAL: Do not reference the `Generated::FormatArgsExpr` class directly.
   * Use the subclass `FormatArgsExpr`, where the following predicates are available.
   */
  class FormatArgsExpr extends Synth::TFormatArgsExpr, ExprImpl::Expr {
    override string getAPrimaryQlClass() { result = "FormatArgsExpr" }

    /**
     * Gets the `index`th argument of this format arguments expression (0-based).
     */
    FormatArgsArg getArg(int index) {
      result =
        Synth::convertFormatArgsArgFromRaw(Synth::convertFormatArgsExprToRaw(this)
              .(Raw::FormatArgsExpr)
              .getArg(index))
    }

    /**
     * Gets any of the arguments of this format arguments expression.
     */
    final FormatArgsArg getAnArg() { result = this.getArg(_) }

    /**
     * Gets the number of arguments of this format arguments expression.
     */
    final int getNumberOfArgs() { result = count(int i | exists(this.getArg(i))) }

    /**
     * Gets the `index`th attr of this format arguments expression (0-based).
     */
    Attr getAttr(int index) {
      result =
        Synth::convertAttrFromRaw(Synth::convertFormatArgsExprToRaw(this)
              .(Raw::FormatArgsExpr)
              .getAttr(index))
    }

    /**
     * Gets any of the attrs of this format arguments expression.
     */
    final Attr getAnAttr() { result = this.getAttr(_) }

    /**
     * Gets the number of attrs of this format arguments expression.
     */
    final int getNumberOfAttrs() { result = count(int i | exists(this.getAttr(i))) }

    /**
     * Gets the template of this format arguments expression, if it exists.
     */
    Expr getTemplate() {
      result =
        Synth::convertExprFromRaw(Synth::convertFormatArgsExprToRaw(this)
              .(Raw::FormatArgsExpr)
              .getTemplate())
    }

    /**
     * Holds if `getTemplate()` exists.
     */
    final predicate hasTemplate() { exists(this.getTemplate()) }

    /**
     * Gets the `index`th format of this format arguments expression (0-based).
     */
    Format getFormat(int index) { none() }

    /**
     * Gets any of the formats of this format arguments expression.
     */
    final Format getAFormat() { result = this.getFormat(_) }

    /**
     * Gets the number of formats of this format arguments expression.
     */
    final int getNumberOfFormats() { result = count(int i | exists(this.getFormat(i))) }
  }
}
