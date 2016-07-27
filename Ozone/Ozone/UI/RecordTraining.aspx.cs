﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Ozone.UI
{
    public partial class RecordTraining : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        private string CheckDataBeforeRun()
        {
            try
            {
                string _msgErr = null;

                if (txtTitle.Text.Trim().Length == 0)
                {
                    _msgErr = "กรุณากรอกข้อมูลหัวข้อการอบรม";
                }
                else if (txtOwner.Text.Trim().Length == 0)
                {
                    _msgErr = "กรุณากรอกข้อมูลผู้จัดการอบรม";
                }
                else if (txtAddress.Text.Trim().Length == 0)
                {
                    _msgErr = "กรุณากรอกข้อมูลสถานที่การอบรม";
                }
                else if (dateStart.Value.Trim().Length == 0)
                {
                    _msgErr = "กรุณาเลือกวันที่เริ่มการอบรม";
                }
                else if (dateEnd.Value.Trim().Length == 0)
                {
                    _msgErr = "กรุณาเลือกวันที่สิ้นสุดการอบรม";
                }
                else if (txtParticipant.Text.Trim().Length == 0)
                {
                    _msgErr = "กรุณากรอกจำนวนผู้เข้าร่วมการอบรม";
                }

                return _msgErr;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            try
            {
                txtTitle.Text = string.Empty;
                txtAddress.Text = string.Empty;
                txtOwner.Text = string.Empty;
                txtParticipant.Text = string.Empty;
                dateStart.Value = null;
                dateEnd.Value = null;
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            try
            {
                string _msgErr = CheckDataBeforeRun();

                if (_msgErr != null)
                {
                    RegisterClientScriptBlock("OnLoad", "<script>alert('" + _msgErr + "!')</script>");
                    return;
                }
                
                //Response.Write("Title : " + txtTitle.Text + "\n");
                //Response.Write("Owner : " + txtOwner.Text + "\n");
                //Response.Write("Address : " + txtAddress.Text + "\n");
                //Response.Write("Start Date : " + dateStart.Value + "\n");
                //Response.Write("End Date : " + dateEnd.Value +"\n");
                //Response.Write("Participant : " + txtParticipant.Text + "\n");

                RegisterClientScriptBlock("OnLoad", "<script>alert('Complete!')</script>");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }
        }



    }
}