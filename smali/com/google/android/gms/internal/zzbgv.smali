.class public final Lcom/google/android/gms/internal/zzbgv;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbgv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final key:Ljava/lang/String;

.field private versionCode:I

.field final zzgcs:Lcom/google/android/gms/internal/zzbgo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbgo<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbgs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbgs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbgv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzbgo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbgo<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbgv;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbgv;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbgv;->zzgcs:Lcom/google/android/gms/internal/zzbgo;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzbgo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbgo<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbgv;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbgv;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbgv;->zzgcs:Lcom/google/android/gms/internal/zzbgo;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbgv;->versionCode:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgv;->key:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgv;->zzgcs:Lcom/google/android/gms/internal/zzbgo;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
