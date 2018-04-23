.class public Lcom/google/firebase/auth/internal/zzh;
.super Lcom/google/firebase/auth/FirebaseUser;


# instance fields
.field private zzmgk:Z

.field private zzmhh:Lcom/google/android/gms/internal/zzdym;

.field private zzmhi:Lcom/google/firebase/auth/internal/zzf;

.field private zzmhj:Ljava/lang/String;

.field private zzmhk:Ljava/lang/String;

.field private zzmhl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzf;",
            ">;"
        }
    .end annotation
.end field

.field private zzmhm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzmhn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzf;",
            ">;"
        }
    .end annotation
.end field

.field private zzmho:Ljava/lang/String;

.field private zzmhp:Z

.field private zzmhq:Lcom/google/firebase/auth/FirebaseUserMetadata;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhj:Ljava/lang/String;

    const-string p1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhk:Ljava/lang/String;

    const-string p1, "2"

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmho:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/firebase/auth/FirebaseUser;->zzaq(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhi:Lcom/google/firebase/auth/internal/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzf;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhi:Lcom/google/firebase/auth/internal/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzf;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/firebase/auth/FirebaseUserMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhq:Lcom/google/firebase/auth/FirebaseUserMetadata;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhi:Lcom/google/firebase/auth/internal/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzf;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoUrl()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhi:Lcom/google/firebase/auth/internal/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzf;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getProviderData()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhl:Ljava/util/List;

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhi:Lcom/google/firebase/auth/internal/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzf;->getProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProviders()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhm:Ljava/util/List;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhi:Lcom/google/firebase/auth/internal/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzf;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhp:Z

    return v0
.end method

.method public isEmailVerified()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhi:Lcom/google/firebase/auth/internal/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzf;->isEmailVerified()Z

    move-result v0

    return v0
.end method

.method public final isNewUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmgk:Z

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzdym;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzdym;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdym;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhh:Lcom/google/android/gms/internal/zzdym;

    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUserMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhq:Lcom/google/firebase/auth/FirebaseUserMetadata;

    return-void
.end method

.method public final zzaq(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;)",
            "Lcom/google/firebase/auth/FirebaseUser;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhl:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhm:Ljava/util/List;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhn:Ljava/util/Map;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/UserInfo;

    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firebase"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/google/firebase/auth/internal/zzf;

    iput-object v3, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhi:Lcom/google/firebase/auth/internal/zzf;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhm:Ljava/util/List;

    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhl:Ljava/util/List;

    move-object v4, v2

    check-cast v4, Lcom/google/firebase/auth/internal/zzf;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhn:Ljava/util/Map;

    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhi:Lcom/google/firebase/auth/internal/zzf;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhl:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzf;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhi:Lcom/google/firebase/auth/internal/zzf;

    :cond_2
    return-object p0
.end method

.method public final zzbre()Lcom/google/firebase/FirebaseApp;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhj:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    return-object v0
.end method

.method public final zzbrf()Lcom/google/android/gms/internal/zzdym;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhh:Lcom/google/android/gms/internal/zzdym;

    return-object v0
.end method

.method public final zzbrg()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhh:Lcom/google/android/gms/internal/zzdym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdym;->zzabg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbrh()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzbrf()Lcom/google/android/gms/internal/zzdym;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdym;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbsc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzf;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhl:Ljava/util/List;

    return-object v0
.end method

.method public final synthetic zzcf(Z)Lcom/google/firebase/auth/FirebaseUser;
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmhp:Z

    return-object p0
.end method

.method public final zzci(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmgk:Z

    return-void
.end method

.method public final zzpc(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzh;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmho:Ljava/lang/String;

    return-object p0
.end method
