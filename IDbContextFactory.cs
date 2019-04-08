using System.Data.Entity;

namespace EncryptedDialogue.EF
{
    public interface IDbContextFactory
    {
        DbContext CreateInstance();
    }
}
