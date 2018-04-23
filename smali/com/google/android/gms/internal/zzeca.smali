.class final Lcom/google/android/gms/internal/zzeca;
.super Ljava/lang/Object;


# instance fields
.field private final data:Ljava/lang/Object;

.field private final zzmph:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmpj:Ljava/lang/String;

.field private final zzmpk:Lcom/google/android/gms/internal/zzece;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzece;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeca;->zzmpj:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeca;->zzmph:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeca;->data:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeca;->zzmpk:Lcom/google/android/gms/internal/zzece;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;Lcom/google/android/gms/internal/zzebp;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzeca;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeca;)Lcom/google/android/gms/internal/zzece;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeca;->zzmpk:Lcom/google/android/gms/internal/zzece;

    return-object p0
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeca;->zzmpj:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeca;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeca;->zzmph:Ljava/util/List;

    return-object v0
.end method

.method public final zzbut()Lcom/google/android/gms/internal/zzece;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeca;->zzmpk:Lcom/google/android/gms/internal/zzece;

    return-object v0
.end method
