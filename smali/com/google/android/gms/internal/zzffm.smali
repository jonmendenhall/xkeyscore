.class public Lcom/google/android/gms/internal/zzffm;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzpge:Z = false

.field private static final zzpgf:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final zzpgg:Lcom/google/android/gms/internal/zzffm;


# instance fields
.field private final zzpgh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzffm;->zzcxa()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzffm;->zzpgf:Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/zzffm;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzffm;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/zzffm;->zzpgg:Lcom/google/android/gms/internal/zzffm;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffm;->zzpgh:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzffm;->zzpgh:Ljava/util/Map;

    return-void
.end method

.method private static zzcxa()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.Extension"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzcxb()Lcom/google/android/gms/internal/zzffm;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzffl;->zzcwz()Lcom/google/android/gms/internal/zzffm;

    move-result-object v0

    return-object v0
.end method
