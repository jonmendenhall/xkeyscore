.class public final Lcom/google/android/gms/internal/zzeki;
.super Lcom/google/android/gms/internal/zzejv;


# static fields
.field private static final zzndg:Lcom/google/android/gms/internal/zzeki;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeki;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeki;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeki;->zzndg:Lcom/google/android/gms/internal/zzeki;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejv;-><init>()V

    return-void
.end method

.method public static zzcap()Lcom/google/android/gms/internal/zzeki;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzeki;->zzndg:Lcom/google/android/gms/internal/zzeki;

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/zzekc;

    check-cast p2, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object p2

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzekd;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzejg;->zzi(Lcom/google/android/gms/internal/zzejg;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/zzeki;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0x302679

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PriorityIndex"

    return-object v0
.end method

.method public final zzcag()Lcom/google/android/gms/internal/zzekc;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzo()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzekd;->zzndb:Lcom/google/android/gms/internal/zzeji;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzejv;->zzf(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekc;

    move-result-object v0

    return-object v0
.end method

.method public final zzcah()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get query definition on priority index!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekc;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzekc;

    new-instance v1, Lcom/google/android/gms/internal/zzekl;

    const-string v2, "[PRIORITY-POST]"

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/zzekl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzekd;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzekd;)Z
    .locals 0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
