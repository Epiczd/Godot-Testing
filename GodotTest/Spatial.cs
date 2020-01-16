using Godot;
using System;

public class Spatial : Godot.Spatial
{
    // Declare member variables here. Examples:
    // private int a = 2;
    // private string b = "text";

    // Called when the node enters the scene tree for the first time.

    private bool mouseVisible;

    public override void _Ready()
    {
        mouseVisible = false;
    }


    public override void _Process(float delta)
    {
        /*
        if(Input.IsKeyPressed(Convert.ToInt32(KeyList.W)))
        {
            Rotate(Vector3.Forward, Mathf.Pi);
            RotateX(Mathf.Pi * 1);
            
        }
        */

        if(Input.IsKeyPressed(Convert.ToInt32(KeyList.Escape)) && mouseVisible == false)
        {
            Input.SetMouseMode(Input.MouseMode.Visible);
            mouseVisible = true;
        }
        else if(Input.IsKeyPressed(Convert.ToInt32(KeyList.Escape)) && mouseVisible == true)
        {
            Input.SetMouseMode(Input.MouseMode.Captured);
            mouseVisible = false;
        }

        GD.Print(mouseVisible);

        /*
        if(Input.IsKeyPressed(Convert.ToInt32(KeyList.Space)))
        {
            Rotate(Vector3.Up, Mathf.Pi + 2);
        }
        */
    }
}
