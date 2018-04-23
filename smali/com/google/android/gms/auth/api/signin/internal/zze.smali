.class public final Lcom/google/android/gms/auth/api/signin/internal/zze;
.super Ljava/lang/Object;


# static fields
.field private static zzehz:Lcom/google/android/gms/internal/zzbgg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "GoogleSignInCommon"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzehz:Lcom/google/android/gms/internal/zzbgg;

    return-void
.end method

.method public static getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_2

    const-string v0, "googleSignInStatus"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "googleSignInAccount"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "googleSignInAccount"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const-string v1, "googleSignInStatus"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/common/api/Status;->zzfni:Lcom/google/android/gms/common/api/Status;

    :cond_1
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzehz:Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "getSignInIntent()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "config"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "config"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p1
.end method

.method public static zza(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Z)Lcom/google/android/gms/common/api/OptionalPendingResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            "Z)",
            "Lcom/google/android/gms/common/api/OptionalPendingResult<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzehz:Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "silentSignIn()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzbgg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzehz:Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "getEligibleSavedSignInResult()"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzbgg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzbr(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzabm()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    if-nez v3, :cond_1

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzabf()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isIdTokenRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isIdTokenRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getServerClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getServerClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzabe()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzabe()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzbr(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzabl()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zza()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    sget-object v4, Lcom/google/android/gms/common/api/Status;->zzfni:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, v0, v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_4

    sget-object p1, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzehz:Lcom/google/android/gms/internal/zzbgg;

    const-string p2, "Eligible saved sign in result found"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzbgg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3, p0}, Lcom/google/android/gms/common/api/PendingResults;->zzb(Lcom/google/android/gms/common/api/Result;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/OptionalPendingResult;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p3, :cond_5

    new-instance p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p1, v1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1, p0}, Lcom/google/android/gms/common/api/PendingResults;->zzb(Lcom/google/android/gms/common/api/Result;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/OptionalPendingResult;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p3, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzehz:Lcom/google/android/gms/internal/zzbgg;

    const-string v0, "trySilentSignIn()"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/zzbgg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p3, Lcom/google/android/gms/auth/api/signin/internal/zzf;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/internal/zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/common/api/internal/zzco;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zzco;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-object p1
.end method

.method public static zza(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/content/Context;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzehz:Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "Signing out"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzbq(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzfni:Lcom/google/android/gms/common/api/Status;

    invoke-static {p1, p0}, Lcom/google/android/gms/common/api/PendingResults;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lcom/google/android/gms/auth/api/signin/internal/zzh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzehz:Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "getFallbackSignInIntent()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.google.android.gms.auth.APPAUTH_SIGN_IN"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/content/Context;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzehz:Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "Revoking access"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzbq(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzfnn:Lcom/google/android/gms/common/api/Status;

    invoke-static {p1, p0}, Lcom/google/android/gms/common/api/PendingResults;->zza(Lcom/google/android/gms/common/api/Result;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lcom/google/android/gms/auth/api/signin/internal/zzj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;

    move-result-object p0

    return-object p0
.end method

.method private static zzbq(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzbr(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzo;->clear()V

    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzagr()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzags()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzbm;->zzair()V

    return-void
.end method

.method public static zzc(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzehz:Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "getNoImplementationSignInIntent()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.google.android.gms.auth.NO_IMPL"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
