.class final Lcom/google/android/gms/internal/zzeeg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmtx:Lcom/google/android/gms/internal/zzeik;

.field private synthetic zzmty:Lcom/google/android/gms/internal/zzefw;

.field private synthetic zzmtz:Lcom/google/android/gms/internal/zzeef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeef;Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzefw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeg;->zzmtz:Lcom/google/android/gms/internal/zzeef;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeeg;->zzmtx:Lcom/google/android/gms/internal/zzeik;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeeg;->zzmty:Lcom/google/android/gms/internal/zzefw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeg;->zzmtz:Lcom/google/android/gms/internal/zzeef;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeef;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzedn;->zzd(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzefa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeeg;->zzmtx:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzefa;->zzp(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeeg;->zzmtz:Lcom/google/android/gms/internal/zzeef;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeef;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzedn;->zze(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzefh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeeg;->zzmtx:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzefh;->zzi(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeeg;->zzmtz:Lcom/google/android/gms/internal/zzeef;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeef;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeg;->zzmty:Lcom/google/android/gms/internal/zzefw;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzefw;->zzb(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    :cond_0
    return-void
.end method
