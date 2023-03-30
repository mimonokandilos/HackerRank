//class must have the following methods: 1 addNote(state,name) 
//adds a note with the given namem and state to the collection 
//a if name is empty yhen throw error name cannot be emoty b if passed 
//name is non-empy but given state is not valid for not throw error 2 getNotes(state) 
//returns an array of name of notes with the giben state so far added. 
//Names are returned in the order added A if no given state is not valid throw 
//edxpecction B if no note is founnd in state retrun empty array/ 'use strict';

// issue: ran file and tried entering values but got no response.

'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', function(inputStdin) {
  inputString += inputStdin;
});

process.stdin.on('end', function() {
  inputString = inputString.split('\n');
  main();
});

function readLine() {
  return inputString[currentLine++];
}

class NotesStore {
  constructor() {
      this.notes = [];
  }
  
  addNote(state,name){
      if(name.trim() === ''){
        throw new Error(`Name cannot be empty`);
      }
      if(!['completed','active', 'others'].includes(state)) {
          throw new Error(`Invalid state ${state}`);
      }
      
      this.notes.push({state,name});
  }
  
    getNotes(state) {
        if(!['completed','active', 'others'].includes(state)) {
          throw new Error(`Invalid state ${state}`);
        }
        
        return this.notes
        .filter(note => note.state === state)
        .map(note => note.name);
      
    }
}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);
    
    const obj = new NotesStore();
    const operationCount = parseInt(readLine().trim());
    
    for(let i = 1; i <= operationCount; i++) {
        const operationInfo = readLine().trim().split(' ');
        try {
            if (operationInfo[0] === 'addNote') {
                obj.addNote(operationInfo[1], operationInfo[2] || '');
            } else if (operationInfo[0] === 'getNotes') {
                const res = obj.getNotes(operationInfo[1]);
                if (res.length === 0) {
                    ws.write('No Notes\n');
                } else {
                    ws.write(`${res.join(',')}\n`);
                }
            }
        } catch (e) {
            ws.write(`${e}\n`);
        }
    }
    ws.end();
}
