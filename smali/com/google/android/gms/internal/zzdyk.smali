.class public final Lcom/google/android/gms/internal/zzdyk;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzdyk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCreationTimestamp:J

.field private zzeey:Ljava/lang/String;

.field private zzegs:Ljava/lang/String;

.field private zzegt:Ljava/lang/String;

.field private zzimi:Ljava/lang/String;

.field private zzmdx:Ljava/lang/String;

.field private zzmgg:Ljava/lang/String;

.field private zzmgh:Z

.field private zzmgi:Lcom/google/android/gms/internal/zzdyq;

.field private zzmgj:J

.field private zzmgk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzdyl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdyl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdyk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzdyq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdyq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgi:Lcom/google/android/gms/internal/zzdyq;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzdyq;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgg:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdyk;->zzegs:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgh:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdyk;->zzegt:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzdyk;->zzmdx:Ljava/lang/String;

    if-nez p6, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzdyq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzdyq;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p6}, Lcom/google/android/gms/internal/zzdyq;->zza(Lcom/google/android/gms/internal/zzdyq;)Lcom/google/android/gms/internal/zzdyq;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgi:Lcom/google/android/gms/internal/zzdyq;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzdyk;->zzeey:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzdyk;->zzimi:Ljava/lang/String;

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzdyk;->mCreationTimestamp:J

    iput-wide p11, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgj:J

    iput-boolean p13, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgk:Z

    return-void
.end method


# virtual methods
.method public final getCreationTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzdyk;->mCreationTimestamp:J

    return-wide v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyk;->zzegt:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyk;->zzegs:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastSignInTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgj:J

    return-wide v0
.end method

.method public final getLocalId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgg:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyk;->zzimi:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhotoUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyk;->zzmdx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyk;->zzmdx:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isEmailVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgh:Z

    return v0
.end method

.method public final isNewUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgk:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgg:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdyk;->zzegs:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgh:Z

    const/4 v3, 0x4

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdyk;->zzegt:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdyk;->zzmdx:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgi:Lcom/google/android/gms/internal/zzdyq;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdyk;->zzeey:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdyk;->zzimi:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzdyk;->mCreationTimestamp:J

    const/16 p2, 0xa

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IJ)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgj:J

    const/16 p2, 0xb

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IJ)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgk:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzbrt()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdyo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyk;->zzmgi:Lcom/google/android/gms/internal/zzdyq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdyq;->zzbrt()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
