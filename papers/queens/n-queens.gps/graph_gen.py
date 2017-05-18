#!/usr/bin/python2

# Python script to generate nice start graphs representing a chess board for
# the N queens problem.

import sys

# Horizontal and vertical offsets from the start coordinates.
h_offset = 20
v_offset = 20
# Distance between nodes (for both lines and columns).
node_dist = 80

# Edge labels
h_lab = 'h'   # Horizontal
v_lab = 'v'   # Vertical
ld_lab = 'ld' # Left-diagonal (NW-SE)
rd_lab = 'rd' # Right-diagonal (SW-NE)

# Global variable marking the current problem size.
n = 2

# Start of XML file.
def print_prelude():
  print '\
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n\
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">\n\
    <graph edgemode="directed" edgeids="false" role="graph" id="start-'+ str(n) + '">\n\
        <attr name="$version">\n\
            <string>curly</string>\n\
        </attr>'

# End of XML file.
def print_epilogue():
  print '\
    </graph>\n\
</gxl>'

# Places a node of number 'nr' at position (i, j) of the grid.
def print_node(nr, i, j):
  x = i * node_dist + h_offset
  y = j * node_dist + v_offset
  print '\
        <node id="n' + str(nr) + '">\n\
            <attr name="layout">\n\
                <string>' + str(x) + ' ' + str(y) + ' 19 19</string>\n\
            </attr>\n\
        </node>'

# Creates an edge with the given parameters.
def print_edge(src, tgt, label):
  print '\
        <edge to="n' + str(tgt) + '" from="n' + str(src) + '">\n\
            <attr name="label">\n\
                <string>' + label + '</string>\n\
            </attr>\n\
        </edge>'

# Test functions to check special conditions.
def is_first_column(nr):
  return nr % n == 0

def is_last_column(nr):
  return nr % n == n - 1

def is_first_row(nr):
  return nr < n

def is_last_row(nr):
  return nr >= n * (n - 1)

# Prints the horizontal edges outoing from the given node number.
def print_horizontal_edges(nr):
  if not is_first_column(nr):
    print_edge(nr, nr - 1, h_lab)
  if not is_last_column(nr):
    print_edge(nr, nr + 1, h_lab)

# Prints the vertical edges outoing from the given node number.
def print_vertical_edges(nr):
  if not is_first_row(nr):
    print_edge(nr, nr - n, v_lab)
  if not is_last_row(nr):
    print_edge(nr, nr + n, v_lab)

# Prints the diagonal edges (both types) outoing from the given node number.
def print_diagonal_edges(nr):
  if not is_first_column(nr):
    if not is_first_row(nr):
      print_edge(nr, nr - n - 1, ld_lab)
    if not is_last_row(nr):
      print_edge(nr, nr + n - 1, rd_lab)
  if not is_last_column(nr):
    if not is_first_row(nr):
      print_edge(nr, nr - n + 1, rd_lab)
    if not is_last_row(nr):
      print_edge(nr, nr + n + 1, ld_lab)

# Guess what this does... :P
def print_edges(nr):
  print_horizontal_edges(nr)
  print_vertical_edges(nr)
  print_diagonal_edges(nr)

# Prints the entire XML representation to sdtout.
def print_file():
  node_count = 0
  print_prelude()
  for j in range(n):
    for i in range(n):
      print_node(node_count, i, j)
      node_count += 1
  for nr in range(node_count):
    print_edges(nr)
  print_epilogue()

# Main. Change the range if you want larger boards.
for x in range(10, 11):
  n = x
  sys.stdout = open('start-' + str(x) + '.gst', 'w')
  print_file()
  sys.stdout.close()
