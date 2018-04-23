.class public final Lcom/google/android/gms/internal/zzedb;
.super Ljava/lang/Object;


# static fields
.field public static final zzmry:Lcom/google/android/gms/internal/zzejg;

.field public static final zzmrz:Lcom/google/android/gms/internal/zzejg;

.field public static final zzmsa:Lcom/google/android/gms/internal/zzejg;

.field public static final zzmsb:Lcom/google/android/gms/internal/zzejg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".info"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzedb;->zzmry:Lcom/google/android/gms/internal/zzejg;

    const-string v0, "serverTimeOffset"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzedb;->zzmrz:Lcom/google/android/gms/internal/zzejg;

    const-string v0, "authenticated"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzedb;->zzmsa:Lcom/google/android/gms/internal/zzejg;

    const-string v0, "connected"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzedb;->zzmsb:Lcom/google/android/gms/internal/zzejg;

    return-void
.end method
