.class public final Lcom/google/android/gms/internal/zzejx;
.super Lcom/google/android/gms/internal/zzejv;


# static fields
.field private static final zzncs:Lcom/google/android/gms/internal/zzejx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzejx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzejx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzejx;->zzncs:Lcom/google/android/gms/internal/zzejx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejv;-><init>()V

    return-void
.end method

.method public static zzcal()Lcom/google/android/gms/internal/zzejx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzejx;->zzncs:Lcom/google/android/gms/internal/zzejx;

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzekc;

    check-cast p2, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzejg;->zzi(Lcom/google/android/gms/internal/zzejg;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/zzejx;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "KeyIndex"

    return-object v0
.end method

.method public final zzcag()Lcom/google/android/gms/internal/zzekc;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzekc;->zzcan()Lcom/google/android/gms/internal/zzekc;

    move-result-object v0

    return-object v0
.end method

.method public final zzcah()Ljava/lang/String;
    .locals 1

    const-string v0, ".key"

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekc;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/zzekc;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzekd;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
