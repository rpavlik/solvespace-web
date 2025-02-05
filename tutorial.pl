#!/usr/bin/perl

use TEMPL;
TEMPL::Init();

$TEMPL::TITLE = 'SolveSpace - Tutorials';
$TEMPL::SHOW_VERSION = 1;

TEMPL::OutputWithHeader("TUTORIALS", <<EOT
<p>

<p>An <a href="bracket.$TEMPL::PL"><b>introductory tutorial</b></a> is available,
in which we draw the same part that is shown in the demo video. This
covers most of the basic features of SolveSpace, including sketches,
constraints, extrusions, and Boolean operations.</p>

<div class="forimg">
    <a href="bracket.$TEMPL::PL">
        <img class="tut" src="pics/tut-finished-all-hidden.png">
    </a>
</div>
<br><br>

<p>An <a href="box.$TEMPL::PL"><b>assembly tutorial</b></a>, in which we combine
multiple parts into a parametric assembly. We use constraints to define
the positions and orientations of the parts within the assembly.
This means that we can
modify the parts and regenerate the assembly, and the parts will remain
assembled in the desired configuration.</p>

<div class="forimg">
    <a href="box.$TEMPL::PL">
        <img class="tut" src="pics/box-asm-perspective.png">
    </a>
</div>
<br><br>

<p>A <a href="constraints.$TEMPL::PL"><b>tutorial on constraints</b></a>. We look
more closely at the geometric meaning of constraints in SolveSpace,
and the ways that an incorrectly-constrained sketch will fail. We
constrain a simple sketch in several different ways, and use the tools
that SolveSpace provides to debug after overconstraining it. We also
look at sketches with multiple solutions, and constraints both in 3d and
projected into a workplane.</p>

<div class="forimg">
    <a href="constraints.$TEMPL::PL">
        <img class="tut" src="pics/constraints-nonconverging.png">
    </a>
</div>
<br><br>

<p>A <a href="linkage.$TEMPL::PL"><b>tutorial on linkages</b></a>. We use
geometric constraints to model a planar linkage; we then displace one
of the links, and let the constraint solver calculate the resulting
geometry. We use this to plot the coupler curves of the linkage, and
to animate a solid model attached to our linkage's skeleton. We also
look at other kinds of linkages, with joints other than simple pin
joints. </p>

<div class="forimg">
    <a href="linkage.$TEMPL::PL">
        <img class="tut" src="pics/linkage-view.png">
    </a>
</div>
<br><br>

<p>A <a href="2d.$TEMPL::PL"><b>2d drawing tutorial</b></a>. We use SolveSpace
to draw a pure 2d part. So we start with a contour, and specify it using
dimensions and constraints. We also use special tools to split lines and
curves where they intersect, and trim them against each other, and to
round sharp corners. After drawing the part, we place cosmetic dimensions
on the geometry, and export a human-readable dimensioned drawing.</p>

<div class="forimg">
    <a href="2d.$TEMPL::PL">
        <img class="tut" src="pics/2d-part-to-draw.png">
    </a>
</div>

<br><br>
$TEMPL::SEP
Thomas Knight
has <b><a href="http://www.farwire.net/SolveSpace-LearningGuide.htm">
some additional tutorials</a></b> (external site).

<br><br>
$TEMPL::SEP
<br>
<p>And video tutorials are available for a range of topics. These
tutorials were recorded using an earlier version of SolveSpace, so
some slight differences in the user interface may be visible.</p>

<div class="tut">
    <video preload="metadata" width="640" height="480" controls
           poster="pics/vid-simple-flat-part.png">
        <source src="vids/simple-flat-part.webm" type="video/webm">
        <source src="vids/simple-flat-part.mp4" type="video/mp4"
                onerror="videoFallback(parentNode)">

        <a href="vids/simple-flat-part.mp4">
            <img class="tut" src="pics/vid-simple-flat-part.png">
        </a>
    </video>
    <div class="tutcap">
       The introductory tutorial. We review the basic user interface,
       and draw a simple 2d part. Covers rectangles, symmetry constraints,
       distance/length constraints, and equal length constraints.
    </div>
</div>

<div class="tut">
    <video preload="metadata" width="640" height="480" controls
           poster="pics/vid-angle-bracket.png">
        <source src="vids/angle-bracket.webm" type="video/webm">
        <source src="vids/angle-bracket.mp4" type="video/mp4"
                onerror="videoFallback(parentNode)">

        <a href="vids/angle-bracket.mp4">
            <img class="tut" src="pics/vid-angle-bracket.png">
        </a>
    </video>
    <div class="tutcap">
        We draw a slightly more complex part, by combining multiple
        extrusions.  Introduces workplanes and Boolean ops, and several
        new constraints.
    </div>
</div>


<div class="tut">
    <video preload="metadata" width="640" height="480" controls
           poster="pics/vid-constraints.png">
        <source src="vids/constraints.webm" type="video/webm">
        <source src="vids/constraints.mp4" type="video/mp4"
                onerror="videoFallback(parentNode)">

        <a href="vids/constraints.mp4">
            <img class="tut" src="pics/vid-constraints.png">
        </a>
    </video>
    <div class="tutcap">
        We look at constraints in more detail. Covers inconsistent and
        nonconverging sketches (two common error conditions), projected
        constraints in 3d, reference dimensions, and construction
        geometry.
    </div>
</div>


<div class="tut">
    <video preload="metadata" width="640" height="480" controls
           poster="pics/vid-step-and-repeat.png">
        <source src="vids/step-and-repeat.webm" type="video/webm">
        <source src="vids/step-and-repeat.mp4" type="video/mp4"
                onerror="videoFallback(parentNode)">

        <a href="vids/step-and-repeat.mp4">
            <img class="tut" src="pics/vid-step-and-repeat.png">
        </a>
    </video>
    <div class="tutcap">
        We look at step and repeat; this takes entities, and copies
        them multiple times along a line (translating) or the arc of a
        circle (rotating). The details of the step are specified using
        constraints.
    </div>
</div>


<div class="tut">
    <video preload="metadata" width="640" height="480" controls
           poster="pics/vid-assembly.png">
        <source src="vids/assembly.webm" type="video/webm">
        <source src="vids/assembly.mp4" type="video/mp4"
                onerror="videoFallback(parentNode)">

        <a href="vids/assembly.mp4">
            <img class="tut" src="pics/vid-assembly.png">
        </a>
    </video>
    <div class="tutcap">
        We build an assembly from multiple parts. The positions and
        orientations of the parts are enforced using constraints. We
        run a computed intersection check, to verify that the parts
        don't interfere. We then go back and modify one of the parts,
        and observe that the changes propagate into the assembly.
    </div>
</div>


<div class="tut">
    <video preload="metadata" width="640" height="480" controls
           poster="pics/vid-mechanism.png">
        <source src="vids/mechanism.webm" type="video/webm">
        <source src="vids/mechanism.mp4" type="video/mp4"
                onerror="videoFallback(parentNode)">

        <a href="vids/mechanism.mp4">
            <img class="tut" src="pics/vid-mechanism.png">
        </a>
    </video>
    <div class="tutcap">
        We draw linkages and other mechanisms, and simulate their
        operation using the constraint solver. The trajectory of certain
        points on the linkage is traced and exported. We also attach a
        linkage to a solid model, and animate the solid model by dragging
        the linkage.
    </div>
</div>

EOT
);
