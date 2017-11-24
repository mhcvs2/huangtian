package docker

import (
	"github.com/astaxie/beego"
	"huangtian/models/utils"
)

type DController struct {
	beego.Controller
}

// @Title stop
// @Description
// @Success 200
// @Failure 403 body is empty
// @router /stop [post]
func (c *DController) Stop() {
	cmd := utils.ShellCmd{Cmd:"docker stop mhc"}
	if _, _, err := utils.Run(cmd); err != nil {
		c.Data["json"] = utils.NewResult(0, "success")
	} else {
		c.Data["json"] = utils.NewResult(1, "failed")
	}
	c.ServeJSON()
}