.class public final Lcom/google/firebase/auth/internal/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/AuthResult;


# instance fields
.field private zzmhf:Lcom/google/firebase/auth/internal/zzh;

.field private zzmhg:Lcom/google/firebase/auth/internal/zzd;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/internal/zzh;)V
    .locals 6
    .param p1    # Lcom/google/firebase/auth/internal/zzh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/zzh;

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zze;->zzmhf:Lcom/google/firebase/auth/internal/zzh;

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zze;->zzmhf:Lcom/google/firebase/auth/internal/zzh;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzh;->zzbsc()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/auth/internal/zze;->zzmhg:Lcom/google/firebase/auth/internal/zzd;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/internal/zzf;

    invoke-virtual {v2}, Lcom/google/firebase/auth/internal/zzf;->getRawUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/firebase/auth/internal/zzd;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/auth/internal/zzf;

    invoke-virtual {v3}, Lcom/google/firebase/auth/internal/zzf;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/auth/internal/zzf;

    invoke-virtual {v4}, Lcom/google/firebase/auth/internal/zzf;->getRawUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzh;->isNewUser()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/firebase/auth/internal/zzd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/google/firebase/auth/internal/zze;->zzmhg:Lcom/google/firebase/auth/internal/zzd;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zze;->zzmhg:Lcom/google/firebase/auth/internal/zzd;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/firebase/auth/internal/zzd;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzh;->isNewUser()Z

    move-result p1

    invoke-direct {v0, p1}, Lcom/google/firebase/auth/internal/zzd;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zze;->zzmhg:Lcom/google/firebase/auth/internal/zzd;

    :cond_2
    return-void
.end method


# virtual methods
.method public final getAdditionalUserInfo()Lcom/google/firebase/auth/AdditionalUserInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zze;->zzmhg:Lcom/google/firebase/auth/internal/zzd;

    return-object v0
.end method

.method public final getUser()Lcom/google/firebase/auth/FirebaseUser;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zze;->zzmhf:Lcom/google/firebase/auth/internal/zzh;

    return-object v0
.end method
