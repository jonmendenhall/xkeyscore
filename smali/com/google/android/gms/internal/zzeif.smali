.class public final Lcom/google/android/gms/internal/zzeif;
.super Ljava/lang/Object;


# instance fields
.field private final zzmlr:Lcom/google/android/gms/internal/zzejc;

.field private final zzmsc:Lcom/google/android/gms/internal/zzedj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzedc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedc;->zzbwa()Lcom/google/android/gms/internal/zzedj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeif;->zzmsc:Lcom/google/android/gms/internal/zzedj;

    const-string v0, "EventRaiser"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzedc;->zzpv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeif;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeif;)Lcom/google/android/gms/internal/zzejc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeif;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    return-object p0
.end method


# virtual methods
.method public final zzaw(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeif;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeif;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Raising "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " event(s)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeif;->zzmsc:Lcom/google/android/gms/internal/zzedj;

    new-instance v1, Lcom/google/android/gms/internal/zzeig;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzeig;-><init>(Lcom/google/android/gms/internal/zzeif;Ljava/util/ArrayList;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzedj;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method
