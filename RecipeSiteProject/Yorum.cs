//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RecipeSiteProject
{
    using System;
    using System.Collections.Generic;
    
    public partial class Yorum
    {
        public short YorumID { get; set; }
        public string YorumAdSoyad { get; set; }
        public string YorumMail { get; set; }
        public Nullable<System.DateTime> YorumTarih { get; set; }
        public Nullable<bool> YorumOnay { get; set; }
        public string YorumIcerik { get; set; }
        public Nullable<short> YemekID { get; set; }
    
        public virtual Yemek Yemek { get; set; }
    }
}
