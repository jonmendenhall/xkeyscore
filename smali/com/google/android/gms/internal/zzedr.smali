.class final Lcom/google/android/gms/internal/zzedr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeff;


# instance fields
.field private synthetic zzmti:Lcom/google/android/gms/internal/zzedn;

.field private synthetic zzmtm:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedr;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzedr;->zzmtm:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedr;->zzmtm:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedr;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzedn;->zzg(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzefh;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzefh;->zzi(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/zzedr;->zzmti:Lcom/google/android/gms/internal/zzedn;

    const/16 v0, -0x9

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;I)Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzedr;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzedn;->zzb(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    return-void
.end method
