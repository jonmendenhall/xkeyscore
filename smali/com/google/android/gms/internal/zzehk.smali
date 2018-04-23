.class final Lcom/google/android/gms/internal/zzehk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehp<",
        "Ljava/util/Map<",
        "Lcom/google/android/gms/internal/zzeih;",
        "Lcom/google/android/gms/internal/zzehe;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmyw:Lcom/google/android/gms/internal/zzehf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzehf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehk;->zzmyw:Lcom/google/android/gms/internal/zzehf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzehe;

    iget-boolean p3, p2, Lcom/google/android/gms/internal/zzehe;->complete:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/zzehk;->zzmyw:Lcom/google/android/gms/internal/zzehf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehe;->zzbxt()Lcom/google/android/gms/internal/zzehe;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehf;Lcom/google/android/gms/internal/zzehe;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
