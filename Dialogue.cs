//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EncryptedDialogue.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class Dialogue
    {
        public int Id { get; set; }
        public string Message { get; set; }
        public System.DateTime DateTime { get; set; }
        public int RecipientId { get; set; }
        public int SenderId { get; set; }
    
        public virtual User RecipientUser { get; set; }
        public virtual User SenderUser { get; set; }
    }
}
