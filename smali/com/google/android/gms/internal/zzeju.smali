.class public final Lcom/google/android/gms/internal/zzeju;
.super Lcom/google/android/gms/internal/zzeji;

# interfaces
.implements Lcom/google/android/gms/internal/zzekd;


# static fields
.field private static final zznco:Lcom/google/android/gms/internal/zzeju;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeju;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeju;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeju;->zznco:Lcom/google/android/gms/internal/zzeju;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeji;-><init>()V

    return-void
.end method

.method public static zzcaf()Lcom/google/android/gms/internal/zzeju;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzeju;->zznco:Lcom/google/android/gms/internal/zzeju;

    return-object v0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeji;->zzg(Lcom/google/android/gms/internal/zzekd;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/zzeju;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/zzekd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_1

    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue(Z)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/zzekc;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<Empty Node>"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzekf;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public final zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;
    .locals 0

    return-object p0
.end method

.method public final zzbti()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/zzekc;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzbzt()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final zzbzu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzbzv()Lcom/google/android/gms/internal/zzekd;
    .locals 0

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 1

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejg;->zzbzr()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzeji;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeji;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzeji;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzf(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 0

    if-nez p0, :cond_0

    const/4 p1, 0x0

    throw p1

    :cond_0
    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzekd;)I
    .locals 0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzejg;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzejg;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    if-nez p0, :cond_1

    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/zzekd;->zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzeji;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method

.method public final zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;
    .locals 0

    return-object p0
.end method
