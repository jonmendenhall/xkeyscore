.class public Lcom/google/firebase/auth/zzd;
.super Lcom/google/firebase/auth/AuthCredential;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzefs:Ljava/lang/String;

.field private final zzmcu:Ljava/lang/String;

.field private final zzmcv:Ljava/lang/String;

.field private final zzmcw:Lcom/google/android/gms/internal/zzdyy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/zze;

    invoke-direct {v0}, Lcom/google/firebase/auth/zze;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzdyy;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/zzdyy;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/firebase/auth/AuthCredential;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/zzd;->zzmcu:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/auth/zzd;->zzefs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/auth/zzd;->zzmcv:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/auth/zzd;->zzmcw:Lcom/google/android/gms/internal/zzdyy;

    return-void
.end method

.method public static zza(Lcom/google/firebase/auth/zzd;)Lcom/google/android/gms/internal/zzdyy;
    .locals 7
    .param p0    # Lcom/google/firebase/auth/zzd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/zzd;->zzmcw:Lcom/google/android/gms/internal/zzdyy;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/auth/zzd;->zzmcw:Lcom/google/android/gms/internal/zzdyy;

    return-object p0

    :cond_0
    new-instance v6, Lcom/google/android/gms/internal/zzdyy;

    iget-object v1, p0, Lcom/google/firebase/auth/zzd;->zzefs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/auth/zzd;->zzmcv:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdyy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static zza(Lcom/google/android/gms/internal/zzdyy;)Lcom/google/firebase/auth/zzd;
    .locals 2
    .param p0    # Lcom/google/android/gms/internal/zzdyy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/firebase/auth/zzd;

    const-string v1, "Must specify a non-null webSignInCredential"

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzdyy;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p0}, Lcom/google/firebase/auth/zzd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzdyy;)V

    return-object v0
.end method

.method public static zzn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/zzd;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify an idToken or an accessToken."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance v0, Lcom/google/firebase/auth/zzd;

    const-string v1, "Must specify a non-empty providerId"

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/firebase/auth/zzd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzdyy;)V

    return-object v0
.end method


# virtual methods
.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/zzd;->zzmcu:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/zzd;->zzefs:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/zzd;->zzmcv:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/zzd;->zzmcw:Lcom/google/android/gms/internal/zzdyy;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
