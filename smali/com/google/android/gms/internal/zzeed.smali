.class final Lcom/google/android/gms/internal/zzeed;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehv<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/zzeeo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzmti:Lcom/google/android/gms/internal/zzedn;

.field private synthetic zzmtv:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeed;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iput p2, p0, Lcom/google/android/gms/internal/zzeed;->zzmtv:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/zzehs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzehs<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeeo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeed;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget v1, p0, Lcom/google/android/gms/internal/zzeed;->zzmtv:I

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzehs;I)V

    return-void
.end method
