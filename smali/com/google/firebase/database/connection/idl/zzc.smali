.class public final Lcom/google/firebase/database/connection/idl/zzc;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/database/connection/idl/zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzmnr:Z

.field final zzmnt:Ljava/lang/String;

.field final zzmnu:Ljava/lang/String;

.field final zzmqj:Lcom/google/firebase/database/connection/idl/zzi;

.field final zzmqk:I

.field final zzmql:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzmqm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/zze;

    invoke-direct {v0}, Lcom/google/firebase/database/connection/idl/zze;-><init>()V

    sput-object v0, Lcom/google/firebase/database/connection/idl/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzebk;Lcom/google/android/gms/internal/zzeje;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzebk;",
            "Lcom/google/android/gms/internal/zzeje;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    sget-object p3, Lcom/google/firebase/database/connection/idl/zzd;->zzmqn:[I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeje;->ordinal()I

    move-result p2

    aget p2, p3, p2

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p2, 0x4

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x3

    goto :goto_0

    :pswitch_2
    const/4 p2, 0x2

    goto :goto_0

    :pswitch_3
    const/4 p2, 0x1

    :goto_0
    new-instance p3, Lcom/google/firebase/database/connection/idl/zzi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebk;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebk;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebk;->isSecure()Z

    move-result p1

    invoke-direct {p3, v0, v1, p1}, Lcom/google/firebase/database/connection/idl/zzi;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqj:Lcom/google/firebase/database/connection/idl/zzi;

    iput p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqk:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmql:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnr:Z

    iput-object p5, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqm:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnt:Ljava/lang/String;

    invoke-virtual {p7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnu:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/idl/zzi;ILjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/connection/idl/zzi;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqj:Lcom/google/firebase/database/connection/idl/zzi;

    iput p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqk:I

    iput-object p3, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmql:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnr:Z

    iput-object p5, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqm:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnt:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqj:Lcom/google/firebase/database/connection/idl/zzi;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqk:I

    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    iget-object p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmql:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zzb(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-boolean p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnr:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqm:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnt:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnu:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
