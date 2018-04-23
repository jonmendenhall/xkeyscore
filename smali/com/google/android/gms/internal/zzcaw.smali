.class public final Lcom/google/android/gms/internal/zzcaw;
.super Ljava/lang/Object;


# instance fields
.field private final zzbhd:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/zzcaq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbhe:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/zzcav;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbhf:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/zzcav;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcaw;->zzbhd:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcaw;->zzbhe:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcaw;->zzbhf:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcaq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcaw;->zzbhd:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
