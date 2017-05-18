
package de.gupro.gxl.gxl1;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:group xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="value">
 *   &lt;xs:choice>
 *     &lt;xs:element ref="ns:bag"/>
 *     &lt;xs:element ref="ns:set"/>
 *     &lt;xs:element ref="ns:seq"/>
 *     &lt;xs:element ref="ns:tup"/>
 *     &lt;xs:element ref="ns:bool"/>
 *     &lt;xs:element ref="ns:int"/>
 *     &lt;xs:element ref="ns:float"/>
 *     &lt;xs:element ref="ns:string"/>
 *     &lt;xs:element ref="ns:locator"/>
 *     &lt;xs:element ref="ns:enum"/>
 *   &lt;/xs:choice>
 * &lt;/xs:group>
 * </pre>
 */
public class Value
{
    private int choiceSelect = -1;
    private static final int BAG_CHOICE = 0;
    private static final int SET_CHOICE = 1;
    private static final int SEQ_CHOICE = 2;
    private static final int TUP_CHOICE = 3;
    private static final int BOOL_CHOICE = 4;
    private static final int INT_CHOICE = 5;
    private static final int FLOAT_CHOICE = 6;
    private static final int STRING_CHOICE = 7;
    private static final int LOCATOR_CHOICE = 8;
    private static final int ENUM_CHOICE = 9;
    private BagType bag;
    private SetType set;
    private SeqType seq;
    private TupType tup;
    private Bool bool;
    private Int _int;
    private _Float _float;
    private _String string;
    private LocatorType locator;
    private _Enum _enum;

    private void setChoiceSelect(int choice) {
        if (choiceSelect == -1) {
            choiceSelect = choice;
        } else if (choiceSelect != choice) {
            throw new IllegalStateException(
                    "Need to call clearChoiceSelect() before changing existing choice");
        }
    }

    /** 
     * Clear the choice selection.
     */
    public void clearChoiceSelect() {
        choiceSelect = -1;
    }

    /** 
     * Check if Bag is current selection for choice.
     * 
     * @return <code>true</code> if selection, <code>false</code> if not
     */
    public boolean ifBag() {
        return choiceSelect == BAG_CHOICE;
    }

    /** 
     * Get the 'bag' element value.
     * 
     * @return value
     */
    public BagType getBag() {
        return bag;
    }

    /** 
     * Set the 'bag' element value.
     * 
     * @param bag
     */
    public void setBag(BagType bag) {
        setChoiceSelect(BAG_CHOICE);
        this.bag = bag;
    }

    /** 
     * Check if Set is current selection for choice.
     * 
     * @return <code>true</code> if selection, <code>false</code> if not
     */
    public boolean ifSet() {
        return choiceSelect == SET_CHOICE;
    }

    /** 
     * Get the 'set' element value.
     * 
     * @return value
     */
    public SetType getSet() {
        return set;
    }

    /** 
     * Set the 'set' element value.
     * 
     * @param set
     */
    public void setSet(SetType set) {
        setChoiceSelect(SET_CHOICE);
        this.set = set;
    }

    /** 
     * Check if Seq is current selection for choice.
     * 
     * @return <code>true</code> if selection, <code>false</code> if not
     */
    public boolean ifSeq() {
        return choiceSelect == SEQ_CHOICE;
    }

    /** 
     * Get the 'seq' element value.
     * 
     * @return value
     */
    public SeqType getSeq() {
        return seq;
    }

    /** 
     * Set the 'seq' element value.
     * 
     * @param seq
     */
    public void setSeq(SeqType seq) {
        setChoiceSelect(SEQ_CHOICE);
        this.seq = seq;
    }

    /** 
     * Check if Tup is current selection for choice.
     * 
     * @return <code>true</code> if selection, <code>false</code> if not
     */
    public boolean ifTup() {
        return choiceSelect == TUP_CHOICE;
    }

    /** 
     * Get the 'tup' element value.
     * 
     * @return value
     */
    public TupType getTup() {
        return tup;
    }

    /** 
     * Set the 'tup' element value.
     * 
     * @param tup
     */
    public void setTup(TupType tup) {
        setChoiceSelect(TUP_CHOICE);
        this.tup = tup;
    }

    /** 
     * Check if Bool is current selection for choice.
     * 
     * @return <code>true</code> if selection, <code>false</code> if not
     */
    public boolean ifBool() {
        return choiceSelect == BOOL_CHOICE;
    }

    /** 
     * Get the 'bool' element value.
     * 
     * @return value
     */
    public Bool getBool() {
        return bool;
    }

    /** 
     * Set the 'bool' element value.
     * 
     * @param bool
     */
    public void setBool(Bool bool) {
        setChoiceSelect(BOOL_CHOICE);
        this.bool = bool;
    }

    /** 
     * Check if Int is current selection for choice.
     * 
     * @return <code>true</code> if selection, <code>false</code> if not
     */
    public boolean ifInt() {
        return choiceSelect == INT_CHOICE;
    }

    /** 
     * Get the 'int' element value.
     * 
     * @return value
     */
    public Int getInt() {
        return _int;
    }

    /** 
     * Set the 'int' element value.
     * 
     * @param _int
     */
    public void setInt(Int _int) {
        setChoiceSelect(INT_CHOICE);
        this._int = _int;
    }

    /** 
     * Check if Float is current selection for choice.
     * 
     * @return <code>true</code> if selection, <code>false</code> if not
     */
    public boolean ifFloat() {
        return choiceSelect == FLOAT_CHOICE;
    }

    /** 
     * Get the 'float' element value.
     * 
     * @return value
     */
    public _Float getFloat() {
        return _float;
    }

    /** 
     * Set the 'float' element value.
     * 
     * @param _float
     */
    public void setFloat(_Float _float) {
        setChoiceSelect(FLOAT_CHOICE);
        this._float = _float;
    }

    /** 
     * Check if String is current selection for choice.
     * 
     * @return <code>true</code> if selection, <code>false</code> if not
     */
    public boolean ifString() {
        return choiceSelect == STRING_CHOICE;
    }

    /** 
     * Get the 'string' element value.
     * 
     * @return value
     */
    public _String getString() {
        return string;
    }

    /** 
     * Set the 'string' element value.
     * 
     * @param string
     */
    public void setString(_String string) {
        setChoiceSelect(STRING_CHOICE);
        this.string = string;
    }

    /** 
     * Check if Locator is current selection for choice.
     * 
     * @return <code>true</code> if selection, <code>false</code> if not
     */
    public boolean ifLocator() {
        return choiceSelect == LOCATOR_CHOICE;
    }

    /** 
     * Get the 'locator' element value.
     * 
     * @return value
     */
    public LocatorType getLocator() {
        return locator;
    }

    /** 
     * Set the 'locator' element value.
     * 
     * @param locator
     */
    public void setLocator(LocatorType locator) {
        setChoiceSelect(LOCATOR_CHOICE);
        this.locator = locator;
    }

    /** 
     * Check if Enum is current selection for choice.
     * 
     * @return <code>true</code> if selection, <code>false</code> if not
     */
    public boolean ifEnum() {
        return choiceSelect == ENUM_CHOICE;
    }

    /** 
     * Get the 'enum' element value.
     * 
     * @return value
     */
    public _Enum getEnum() {
        return _enum;
    }

    /** 
     * Set the 'enum' element value.
     * 
     * @param _enum
     */
    public void setEnum(_Enum _enum) {
        setChoiceSelect(ENUM_CHOICE);
        this._enum = _enum;
    }
}
