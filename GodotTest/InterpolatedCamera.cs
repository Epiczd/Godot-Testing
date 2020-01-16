using Godot;
using System;

public class InterpolatedCamera : Godot.InterpolatedCamera
{
    // Declare member variables here. Examples:
    // private int a = 2;
    // private string b = "text";

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        
    }

    public override void _Process(float delta)
    {
        if(Input.IsKeyPressed(Convert.ToInt32(KeyList.W)))
        {
            RotateZ(Mathf.Pi);
        }
        RotateZ(Mathf.Pi);
    }
}
