.class final Lcom/google/android/gms/internal/zzehg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehq<",
        "Ljava/util/Map<",
        "Lcom/google/android/gms/internal/zzeih;",
        "Lcom/google/android/gms/internal/zzehe;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzbs(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/zzeih;->zznae:Lcom/google/android/gms/internal/zzeih;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzehe;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzehe;->complete:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
