.class final Lcom/google/android/gms/internal/zzecc;
.super Ljava/lang/Object;


# instance fields
.field private zzmpj:Ljava/lang/String;

.field private zzmpk:Lcom/google/android/gms/internal/zzece;

.field private zzmpp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzmpq:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzece;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzece;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecc;->zzmpj:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzecc;->zzmpp:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzecc;->zzmpk:Lcom/google/android/gms/internal/zzece;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzece;Lcom/google/android/gms/internal/zzebp;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzecc;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzece;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzecc;)Lcom/google/android/gms/internal/zzece;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzecc;->zzmpk:Lcom/google/android/gms/internal/zzece;

    return-object p0
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecc;->zzmpj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbut()Lcom/google/android/gms/internal/zzece;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecc;->zzmpk:Lcom/google/android/gms/internal/zzece;

    return-object v0
.end method

.method public final zzbux()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecc;->zzmpp:Ljava/util/Map;

    return-object v0
.end method

.method public final zzbuy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzecc;->zzmpq:Z

    return-void
.end method

.method public final zzbuz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzecc;->zzmpq:Z

    return v0
.end method
