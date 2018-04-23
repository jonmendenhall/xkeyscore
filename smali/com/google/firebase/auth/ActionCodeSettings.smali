.class public Lcom/google/firebase/auth/ActionCodeSettings;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/ActionCodeSettings$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzah:Ljava/lang/String;

.field private zzeed:I

.field private final zzmcn:Ljava/lang/String;

.field private final zzmco:Ljava/lang/String;

.field private final zzmcp:Ljava/lang/String;

.field private final zzmcq:Z

.field private final zzmcr:Ljava/lang/String;

.field private final zzmcs:Z

.field private zzmct:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/zzb;

    invoke-direct {v0}, Lcom/google/firebase/auth/zzb;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/ActionCodeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zza(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzah:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzb(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcn:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmco:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzc(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcp:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzd(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcq:Z

    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zze(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcr:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzf(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcs:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/auth/ActionCodeSettings$Builder;Lcom/google/firebase/auth/zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/auth/ActionCodeSettings;-><init>(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzah:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcn:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmco:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcp:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcq:Z

    iput-object p6, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcr:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcs:Z

    iput-object p8, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmct:Ljava/lang/String;

    iput p9, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzeed:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/auth/ActionCodeSettings$Builder;
    .locals 2

    new-instance v0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;-><init>(Lcom/google/firebase/auth/zza;)V

    return-object v0
.end method


# virtual methods
.method public canHandleCodeInApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcs:Z

    return v0
.end method

.method public getAndroidInstallApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcq:Z

    return v0
.end method

.method public getAndroidMinimumVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcr:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcp:Ljava/lang/String;

    return-object v0
.end method

.method public getIOSBundle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmcn:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzah:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/firebase/auth/ActionCodeSettings;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/ActionCodeSettings;->getIOSBundle()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmco:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/ActionCodeSettings;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/ActionCodeSettings;->getAndroidInstallApp()Z

    move-result v0

    const/4 v2, 0x5

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/ActionCodeSettings;->getAndroidMinimumVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/ActionCodeSettings;->canHandleCodeInApp()Z

    move-result v0

    const/4 v2, 0x7

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmct:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzeed:I

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzgl(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzeed:I

    return-void
.end method

.method public final zzou(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzmct:Ljava/lang/String;

    return-void
.end method
