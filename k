/*--------------------------------*- C++ -*----------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     | Website:  https://openfoam.org
    \\  /    A nd           | Version:  12
     \\/     M anipulation  |
\*---------------------------------------------------------------------------*/
FoamFile
{
    format      ascii;
    class       volScalarField;
    location    "0";
    object      k;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -2 0 0 0 0];

internalField   uniform 0.015;

boundaryField
{
    inlet
    {
        type            fixedValue;
        value           uniform 0.015;
    }
    outlet
    {
        type            inletOutlet;
        inletValue      uniform 0.015;
        value           uniform 0.015;
    }
    bottom
    {
        type            inletOutlet;
        inletValue      uniform 0.015;
        value           uniform 0.015;
    }
    top
    {
        type            inletOutlet;
        inletValue      uniform 0.015;
        value           uniform 0.015;
    }
    right
    {
        type            inletOutlet;
        inletValue      uniform 0.015;
        value           uniform 0.015;
    }
    left
    {
        type            inletOutlet;
        inletValue      uniform 0.015;
        value           uniform 0.015;
    }
    body
    {
        type            kLowReWallFunction;
        value           uniform 0.015;
    }
}


// ************************************************************************* //
