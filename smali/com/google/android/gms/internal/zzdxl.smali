.class public final Lcom/google/android/gms/internal/zzdxl;
.super Lcom/google/android/gms/common/internal/zzab;

# interfaces
.implements Lcom/google/android/gms/internal/zzdxk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzab<",
        "Lcom/google/android/gms/internal/zzdxp;",
        ">;",
        "Lcom/google/android/gms/internal/zzdxk;"
    }
.end annotation


# static fields
.field private static zzecc:Lcom/google/android/gms/internal/zzbgg;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzmez:Lcom/google/android/gms/internal/zzdxt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "FirebaseAuth"

    const-string v2, "FirebaseAuth:"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdxl;->zzecc:Lcom/google/android/gms/internal/zzbgg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/internal/zzdxt;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x70

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzab;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdxl;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdxl;->zzmez:Lcom/google/android/gms/internal/zzdxt;

    return-void
.end method


# virtual methods
.method protected final zzaap()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzab;->zzaap()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdxl;->zzmez:Lcom/google/android/gms/internal/zzdxt;

    if-eqz v1, :cond_1

    const-string v1, "com.google.firebase.auth.API_KEY"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdxl;->zzmez:Lcom/google/android/gms/internal/zzdxt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdxt;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final zzagg()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdxl;->mContext:Landroid/content/Context;

    const-string v1, "com.google.firebase.auth"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzab(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzakh()Ljava/lang/String;
    .locals 6

    const-string v0, "firebear.preference"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdyh;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "default"

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x625df6b

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const v5, 0x5c13d641

    if-eq v1, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string v0, "default"

    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq v1, v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v4

    :cond_5
    :goto_2
    if-eqz v3, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/zzdxl;->zzecc:Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "Loading module via FirebaseOptions."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;->zze(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdxl;->zzmez:Lcom/google/android/gms/internal/zzdxt;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzdvw;->zzmei:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/zzdxl;->zzecc:Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "Preparing to create service connection to fallback implementation"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;->zze(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdxl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/zzdxl;->zzecc:Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "Preparing to create service connection to gms implementation"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;->zze(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms"

    return-object v0

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/zzdxl;->zzecc:Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "Loading fallback module override."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;->zze(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdxl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic zzbrm()Lcom/google/android/gms/internal/zzdxp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzab;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdxp;

    return-object v0
.end method

.method protected final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzdxp;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzdxp;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzdxq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdxq;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected final zzhi()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.auth.api.gms.service.START"

    return-object v0
.end method

.method protected final zzhj()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    return-object v0
.end method
