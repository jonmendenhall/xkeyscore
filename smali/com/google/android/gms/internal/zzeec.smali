.class final Lcom/google/android/gms/internal/zzeec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehu<",
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

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeec;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iput p2, p0, Lcom/google/android/gms/internal/zzeec;->zzmtv:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/zzehs;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzehs<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeeo;",
            ">;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeec;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget v1, p0, Lcom/google/android/gms/internal/zzeec;->zzmtv:I

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzehs;I)V

    const/4 p1, 0x0

    return p1
.end method
