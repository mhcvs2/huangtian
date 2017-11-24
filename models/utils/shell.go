package utils

import (
	"bytes"
	"strings"
	"os/exec"
)

//ShellCmd describe shell command info
type ShellCmd struct {
	Cmd string
	Flag func() bool
}

//Run run shell command and return output
func Run(s ShellCmd) (string, string, error) {
	if (s.Flag != nil && s.Flag() == false) || (s.Flag == nil) {
		cmd := exec.Command("/bin/bash", "-c", s.Cmd)
		var out bytes.Buffer
		var eout bytes.Buffer
		cmd.Stdout = &out
		cmd.Stderr = &eout
		err := cmd.Run()
		if err != nil {
			return out.String(), eout.String(), err
		}
		return strings.TrimSpace(out.String()), eout.String(), nil
	}
	return "", "", nil
}
