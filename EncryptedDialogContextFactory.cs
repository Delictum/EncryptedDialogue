using System.Data.Entity;

namespace EncryptedDialogue.EF
{
    public class EncryptedDialogContextFactory : IDbContextFactory
    {
        public DbContext CreateInstance()
        {
            return new EncryptedDialogueContainer();
        }
    }
}
