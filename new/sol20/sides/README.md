# Sol 20 Wood sides

This directory contains design files for replacement wood sides for the SOL-20

The Sol-20 is distinctive for its blue painted case and beautiful walnut sides.
Unfortunately, after 40+ years, the wood sides may have become damaged due to
normal wear, accidents or rough handling, or suboptimal storage conditions. In
some cases, the wood sides may be too damaged to reasonably repair. That was the
case for my Sol, which fell 8 feet onto a concrete floor when a shelf collapsed.

I have recreated the sides by making careful measurements from the original
sides, and share the results here for anyone who wants to try to make their own
replacement sides.

## Notes on the design files
I have supplied a .crv file for those using v-carve, as well as DXF files which
contain all the information required to reproduce the sides.

There is a 1-inch square in the file, in case you need to adjust the scale.

The files contain outlines for the walnut sides, as well as the melamine inner
part of each side. 

There are multiple layers for each element:

- masonite: Outlines for the masonite pieces.

- walnut: Outlines for the walunut outer pieces.

- cutouts: These are round holes which make room for bolt heads along the
  outside surface of the metal chassis. Carving out these holes from the inner
  piece allows the side to sit flush against the chassis. For CNC, I recommend
  pocketing out these holes using a 1/8" bit or 1/4" bit."

- screws: These are for #6 1/2" wood screws to hold the inner and outer pieces
  together. I have made these slightly greater than 1/8" (0.130)" in order to
  allow a CNC to pocket out the hole using a 1/8" bit by spiraling down. This is
  a full-thickness hole in the 1/4" inner piece, and a 1/4" pocket in the walnut
  outer piece, so you can use the same toolpath for both.
  
- inserts: These are designed to accept EZ-Lok 8-32 threaded inserts. The
  inserts require a 17/64" hole. This is a full-thickness hole in the inner
  part, and a 1/4" pocket in the walnut sides. In either case, the depth is
  1/4", so you can use the same toolpath for all inserts.


## Materials
The original sides used melamine for the inner portion, but I used 1/4" plywood
in my reproduction.

You'll need at least a couple of flat 1/2" thick pieces of walnut, at least 6"
by 17". I suggest 8" by 20" to give you some room to select the best portion.
For CNC, you will need the extra margin. 

The walnut should be perfectly flat and allowed to acclimate before working. If
you are not able to joint/plane the wood yourself, many wood shops that supply
walnut are able to prepare the wood for you.

For the inner pieces, you will need 1/4" plywood large enough to accommodate
both parts. I prefer decent quality baltic birch.

## construction:

For CNC:

Walnut:
- Use the CNC to cut out the walnut pieces.
- Use a trim router with a 1/4" roundover router bit to round off the edges on both sides.
- shape the edges until round and smooth by sanding
- sand both sides of each piece with progressively finer paper (120-180-220) until smooth.

Inner (plywood or masonite):
- Use the CNC to cut out the walnut and inner (plywood or masonite) pieces.
- Sand the edges until smooth, and sand the faces with 220-grid sandpaper until smooth.
- paint both the inner pieces with a matte flat black paint.
- 

No CNC, but you have access to a laser cutter:
- Cut out templates for the inner and outer pieces from acrylic or other sturdy template material.
- Trace an outline on the plywood/masonite from the inner template, and on the
  walnut from the outer template.
- Clamp the template to the corresponding wood piece, and use a trim router with
  a 1/4" flush trim bit to transfer the pattern from the template to the wood.
- Continue as for the CNC.

No CNC or laser cutter, but can print the patterns.

-- Please let me know if you have better method

- Print the patterns. For the walnut pattern, include a superimposed inner
  pattern (using screw holes and insert holes to align).

- Then, using a sharp pencil, transfer the outlines to the wood by poking the
pencil through the paper onto the wood (use the back side of the wood). Then
using a straight edge, recreate the pattern, filling in the curves by hand. Cut
the wood using whatever tools are appropriate and available (miter saw, table
saw, band saw), and sand to shape. Use the first side as a template for the
second side, transferring the pattern using a trim router with flush bit.

- align the template with bother inner and outer outlines over the walnut. Then,
  using the template, align the inner piece to the outer piece. Clamp the pieces
  together.
  
- Using the template for the inner piece, drill 1/8" screw holes and 17/64"
  insert holes to the appropriate depth (about 1/2").
  
- Unclamp the pieces, and set aside the walnut. Using a 1/2" bit, drill the
  bolt-head cutouts in the inner piece.
  
- continue as for CNC cut pieces.
