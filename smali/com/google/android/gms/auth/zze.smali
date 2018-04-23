.class final Lcom/google/android/gms/auth/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/auth/zzj<",
        "Lcom/google/android/gms/auth/TokenData;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$options:Landroid/os/Bundle;

.field private synthetic zzecd:Landroid/accounts/Account;

.field private synthetic zzece:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/zze;->zzecd:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/android/gms/auth/zze;->zzece:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/zze;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzac(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzey;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzex;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/auth/zze;->zzecd:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/gms/auth/zze;->zzece:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/zze;->val$options:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzex;->zza(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/auth/zzd;->zzq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "tokenDetails"

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/TokenData;->zzd(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/gms/auth/TokenData;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userRecoveryIntent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaxb;->zzfb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaxb;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaxb;->zza(Lcom/google/android/gms/internal/zzaxb;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/auth/zzd;->zzaaq()Lcom/google/android/gms/internal/zzbgg;

    move-result-object v2

    const-string v5, "GoogleAuthUtil"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1f

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "isUserRecoverableError status: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/zzbgg;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    throw v1

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/zzaxb;->zzejd:Lcom/google/android/gms/internal/zzaxb;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzaxb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/zzaxb;->zzeje:Lcom/google/android/gms/internal/zzaxb;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzaxb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/auth/GoogleAuthException;

    invoke-direct {p1, v0}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
