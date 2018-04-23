.class final Lcom/google/android/gms/internal/zzeei;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzece;


# instance fields
.field private synthetic zzmua:Lcom/google/android/gms/internal/zzefw;

.field private synthetic zzmub:Lcom/google/android/gms/internal/zzeeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeeh;Lcom/google/android/gms/internal/zzefw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeei;->zzmub:Lcom/google/android/gms/internal/zzeeh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeei;->zzmua:Lcom/google/android/gms/internal/zzefw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzedn;->zzbf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeei;->zzmua:Lcom/google/android/gms/internal/zzefw;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzefw;->zzb(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeei;->zzmub:Lcom/google/android/gms/internal/zzeeh;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzeeh;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Ljava/util/List;)V

    return-void
.end method
