.class public Lcom/google/android/gms/auth/api/accounttransfer/zzs;
.super Lcom/google/android/gms/internal/zzaxc;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/accounttransfer/zzs;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzeea:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbgo<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private zzaym:Ljava/lang/String;

.field private zzeck:I

.field private zzeeb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzeel:Lcom/google/android/gms/auth/api/accounttransfer/zzu;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/accounttransfer/zzt;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeea:Ljava/util/HashMap;

    const-string v1, "authenticatorInfo"

    const-string v2, "authenticatorInfo"

    const-class v3, Lcom/google/android/gms/auth/api/accounttransfer/zzu;

    const/4 v4, 0x2

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzbgo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeea:Ljava/util/HashMap;

    const-string v1, "signature"

    const-string v2, "signature"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeea:Ljava/util/HashMap;

    const-string v1, "package"

    const-string v2, "package"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaxc;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeeb:Ljava/util/Set;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeck:I

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/auth/api/accounttransfer/zzu;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/google/android/gms/auth/api/accounttransfer/zzu;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaxc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeeb:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeck:I

    iput-object p3, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeel:Lcom/google/android/gms/auth/api/accounttransfer/zzu;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzaym:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeeb:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeck:I

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    :cond_0
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeel:Lcom/google/android/gms/auth/api/accounttransfer/zzu;

    invoke-static {p1, v3, v4, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_1
    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzaym:Ljava/lang/String;

    invoke-static {p1, p2, v3, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_2
    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzbgo;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeeb:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbgo;->zzalu()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic zzaav()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeea:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final zzb(Lcom/google/android/gms/internal/zzbgo;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbgo;->zzalu()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbgo;->zzalu()I

    move-result p1

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown SafeParcelable id="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->mPackageName:Ljava/lang/String;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzaym:Ljava/lang/String;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeel:Lcom/google/android/gms/auth/api/accounttransfer/zzu;

    return-object p1

    :pswitch_3
    iget p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzs;->zzeck:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
