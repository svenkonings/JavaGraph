
package de.gupro.gxl.gxl1;

import java.util.ArrayList;
import java.util.List;

/** 
 * Schema fragment(s) for this class:
 * <pre>
 * &lt;xs:complexType xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" name="graphType">
 *   &lt;xs:complexContent>
 *     &lt;xs:extension base="ns:TypedElementType">
 *       &lt;xs:choice minOccurs="0" maxOccurs="unbounded">
 *         &lt;!-- Reference to inner class Choice -->
 *       &lt;/xs:choice>
 *       &lt;xs:attribute type="xs:string" use="optional" name="role"/>
 *       &lt;xs:attribute type="xs:boolean" default="false" name="edgeids"/>
 *       &lt;xs:attribute type="xs:boolean" default="false" name="hypergraph"/>
 *       &lt;xs:attribute type="ns:edgemodeType" default="directed" name="edgemode"/>
 *     &lt;/xs:extension>
 *   &lt;/xs:complexContent>
 * &lt;/xs:complexType>
 * </pre>
 */
public class GraphType extends TypedElementType
{
    private List<Choice> choiceList = new ArrayList<Choice>();
    private String role;
    private Boolean edgeids;
    private Boolean hypergraph;
    private EdgemodeType edgemode;

    /** 
     * Get the list of choice items.
     * 
     * @return list
     */
    public List<Choice> getChoiceList() {
        return choiceList;
    }

    /** 
     * Set the list of choice items.
     * 
     * @param list
     */
    public void setChoiceList(List<Choice> list) {
        choiceList = list;
    }

    /** 
     * Get the 'role' attribute value.
     * 
     * @return value
     */
    public String getRole() {
        return role;
    }

    /** 
     * Set the 'role' attribute value.
     * 
     * @param role
     */
    public void setRole(String role) {
        this.role = role;
    }

    /** 
     * Get the 'edgeids' attribute value.
     * 
     * @return value
     */
    public Boolean getEdgeids() {
        return edgeids;
    }

    /** 
     * Set the 'edgeids' attribute value.
     * 
     * @param edgeids
     */
    public void setEdgeids(Boolean edgeids) {
        this.edgeids = edgeids;
    }

    /** 
     * Get the 'hypergraph' attribute value.
     * 
     * @return value
     */
    public Boolean getHypergraph() {
        return hypergraph;
    }

    /** 
     * Set the 'hypergraph' attribute value.
     * 
     * @param hypergraph
     */
    public void setHypergraph(Boolean hypergraph) {
        this.hypergraph = hypergraph;
    }

    /** 
     * Get the 'edgemode' attribute value.
     * 
     * @return value
     */
    public EdgemodeType getEdgemode() {
        return edgemode;
    }

    /** 
     * Set the 'edgemode' attribute value.
     * 
     * @param edgemode
     */
    public void setEdgemode(EdgemodeType edgemode) {
        this.edgemode = edgemode;
    }
    /** 
     * Schema fragment(s) for this class:
     * <pre>
     * &lt;xs:choice xmlns:ns="http://www.gupro.de/GXL/gxl-1.0.dtd" xmlns:xs="http://www.w3.org/2001/XMLSchema" minOccurs="0" maxOccurs="unbounded">
     *   &lt;xs:element ref="ns:node"/>
     *   &lt;xs:element ref="ns:edge"/>
     *   &lt;xs:element ref="ns:rel"/>
     * &lt;/xs:choice>
     * </pre>
     */
    public static class Choice
    {
        private int choiceListSelect = -1;
        private static final int NODE_CHOICE = 0;
        private static final int EDGE_CHOICE = 1;
        private static final int REL_CHOICE = 2;
        private NodeType node;
        private EdgeType edge;
        private RelType rel;

        private void setChoiceListSelect(int choice) {
            if (choiceListSelect == -1) {
                choiceListSelect = choice;
            } else if (choiceListSelect != choice) {
                throw new IllegalStateException(
                        "Need to call clearChoiceListSelect() before changing existing choice");
            }
        }

        /** 
         * Clear the choice selection.
         */
        public void clearChoiceListSelect() {
            choiceListSelect = -1;
        }

        /** 
         * Check if Node is current selection for choice.
         * 
         * @return <code>true</code> if selection, <code>false</code> if not
         */
        public boolean ifNode() {
            return choiceListSelect == NODE_CHOICE;
        }

        /** 
         * Get the 'node' element value.
         * 
         * @return value
         */
        public NodeType getNode() {
            return node;
        }

        /** 
         * Set the 'node' element value.
         * 
         * @param node
         */
        public void setNode(NodeType node) {
            setChoiceListSelect(NODE_CHOICE);
            this.node = node;
        }

        /** 
         * Check if Edge is current selection for choice.
         * 
         * @return <code>true</code> if selection, <code>false</code> if not
         */
        public boolean ifEdge() {
            return choiceListSelect == EDGE_CHOICE;
        }

        /** 
         * Get the 'edge' element value.
         * 
         * @return value
         */
        public EdgeType getEdge() {
            return edge;
        }

        /** 
         * Set the 'edge' element value.
         * 
         * @param edge
         */
        public void setEdge(EdgeType edge) {
            setChoiceListSelect(EDGE_CHOICE);
            this.edge = edge;
        }

        /** 
         * Check if Rel is current selection for choice.
         * 
         * @return <code>true</code> if selection, <code>false</code> if not
         */
        public boolean ifRel() {
            return choiceListSelect == REL_CHOICE;
        }

        /** 
         * Get the 'rel' element value.
         * 
         * @return value
         */
        public RelType getRel() {
            return rel;
        }

        /** 
         * Set the 'rel' element value.
         * 
         * @param rel
         */
        public void setRel(RelType rel) {
            setChoiceListSelect(REL_CHOICE);
            this.rel = rel;
        }
    }
}
