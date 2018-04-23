.class public final Lcom/google/android/gms/internal/zzcgl;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcgl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public packageName:Ljava/lang/String;

.field private versionCode:I

.field public zziyf:Ljava/lang/String;

.field public zziyg:Lcom/google/android/gms/internal/zzcln;

.field public zziyh:J

.field public zziyi:Z

.field public zziyj:Ljava/lang/String;

.field public zziyk:Lcom/google/android/gms/internal/zzcha;

.field public zziyl:J

.field public zziym:Lcom/google/android/gms/internal/zzcha;

.field public zziyn:J

.field public zziyo:Lcom/google/android/gms/internal/zzcha;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcgm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcgm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcgl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcln;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcha;JLcom/google/android/gms/internal/zzcha;JLcom/google/android/gms/internal/zzcha;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcgl;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    iput-wide p10, p0, Lcom/google/android/gms/internal/zzcgl;->zziyl:J

    iput-object p12, p0, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iput-wide p13, p0, Lcom/google/android/gms/internal/zzcgl;->zziyn:J

    iput-object p15, p0, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzcgl;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcgl;->versionCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyl:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcgl;->zziyl:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyn:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcgl;->zziyn:J

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcln;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcha;JLcom/google/android/gms/internal/zzcha;JLcom/google/android/gms/internal/zzcha;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcgl;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzcgl;->zziyl:J

    iput-object p11, p0, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iput-wide p12, p0, Lcom/google/android/gms/internal/zzcgl;->zziyn:J

    iput-object p14, p0, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzcgl;->versionCode:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    const/4 v1, 0x5

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IJ)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    const/4 v3, 0x6

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzcgl;->zziyl:J

    const/16 v1, 0x9

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    const/16 v3, 0xa

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzcgl;->zziyn:J

    const/16 v1, 0xb

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    const/16 v3, 0xc

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
