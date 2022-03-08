RegisterCommand('record', function()
    TriggerEvent('lvthan:recordmenu')
  end)
  
  RegisterNetEvent('lvthan:recordmenu', function()
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 1,
            header = "RockstarEditor Menu ",
            txt = ""
        },
    {
            id = 2,
            header = "Start Record",
            txt = "Select",
            params = {
                event = "lvth:rec",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 3,
            header = "Stop and Save",
            txt = "Select",
            params = {
                event = "lvth:stop",
                args = {
                    number = 1,
                    id = 3
                }
            }
        },
        {
            id = 4,
            header = "Stop and Delete",
            txt = "Select",
            params = {
                event = "lvth:delete",
                args = {
                    number = 1,
                    id = 4
                }
            }
        },
        {
            id = 5,
            header = "Open Rockstar Editor",
            txt = "Select",
            params = {
                event = "lvth:rock",
                args = {
                    number = 1,
                    id = 5
                }
            }
        },
        {
          id = 6,
          header = "◀",
          txt = "",
          params = {
              event = "",
              args = {
                  number = 1,
                  id = 6
              }
          }
      },
    })
  end)
  
  AddEventHandler('lvth:rec', function()
    StartRecording(1)
  end)
  
  AddEventHandler('lvth:stop', function()
    StopRecordingAndSaveClip()
  end)
  
  AddEventHandler('lvth:delete', function()
    StopRecordingAndDiscardClip()
  end)
  
  AddEventHandler('lvth:rock', function()
    NetworkSessionLeaveSinglePlayer()
    ActivateRockstarEditor()  
  end)