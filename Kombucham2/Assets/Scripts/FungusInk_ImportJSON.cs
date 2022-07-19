// This code is part of the Fungus library (https://github.com/snozbot/fungus)
// It is released for free under the MIT open source license (https://github.com/snozbot/fungus/blob/master/LICENSE)

// Snippet added by ducksonthewater, 2019-01-03 - www.ducks-on-the-water.com

using System.Collections.Generic;
using Ink.Runtime;
using UnityEngine;

namespace Fungus {
    /// <summary>
    /// Changes the sprite on a SpriteRenderer.
    /// </summary>
    [CommandInfo ("Ink",
        "Import JSON File",
        "Imports a JSON file (=loads) based on a Fungus string variable")]
    [AddComponentMenu ("")]
    public class FungusInk_ImportJSON : Command {
        [Tooltip ("Ink story object")]
        [SerializeField] protected TextAsset jsonAsset;

        [Tooltip ("The Fungus string variable")]
        [SerializeField] protected StringData stringData;

        #region Public members

        public override void OnEnter () {
            Story story = FindObjectOfType<InkFungus.NarrativeDirector> ().story;
            story.state.LoadJson (stringData);
            Continue ();
        }

        public override string GetSummary () {
            string summary = "";
            if (jsonAsset == null) {
                summary = "No story object added";
            }
            return summary;
        }

        public override Color GetButtonColor () {
            return new Color32 (235, 191, 217, 255);
        }

        public override bool IsReorderableArray (string propertyName) {
            if (propertyName == "spriteRenderers") {
                return true;
            }

            return false;
        }

        #endregion
    }
}