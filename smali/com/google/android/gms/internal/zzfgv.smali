.class public final Lcom/google/android/gms/internal/zzfgv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzmmo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final zzpin:Lcom/google/android/gms/internal/zzfgx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfgx<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzfiy;Ljava/lang/Object;Lcom/google/android/gms/internal/zzfiy;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzfiy;",
            "TK;",
            "Lcom/google/android/gms/internal/zzfiy;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzfgx;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzfgx;-><init>(Lcom/google/android/gms/internal/zzfiy;Ljava/lang/Object;Lcom/google/android/gms/internal/zzfiy;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfgv;->zzpin:Lcom/google/android/gms/internal/zzfgx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfgv;->zzmmo:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfgv;->value:Ljava/lang/Object;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzfgx;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzfgx<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgx;->zzpio:Lcom/google/android/gms/internal/zzfiy;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzffq;->zza(Lcom/google/android/gms/internal/zzfiy;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzfgx;->zzpiq:Lcom/google/android/gms/internal/zzfiy;

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/zzffq;->zza(Lcom/google/android/gms/internal/zzfiy;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzfiy;Ljava/lang/Object;Lcom/google/android/gms/internal/zzfiy;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzfgv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzfiy;",
            "TK;",
            "Lcom/google/android/gms/internal/zzfiy;",
            "TV;)",
            "Lcom/google/android/gms/internal/zzfgv<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzfgv;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfgv;-><init>(Lcom/google/android/gms/internal/zzfiy;Ljava/lang/Object;Lcom/google/android/gms/internal/zzfiy;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzffm;Lcom/google/android/gms/internal/zzfiy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzffb;",
            "Lcom/google/android/gms/internal/zzffm;",
            "Lcom/google/android/gms/internal/zzfiy;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzfgw;->zzpgo:[I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfiy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/zzffq;->zza(Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzfiy;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Groups are not allowed in maps."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzffb;->zzcwd()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p3, Lcom/google/android/gms/internal/zzfhe;

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzfhe;->zzcxp()Lcom/google/android/gms/internal/zzfhf;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zzffb;->zza(Lcom/google/android/gms/internal/zzfhf;Lcom/google/android/gms/internal/zzffm;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzfhf;->zzcxu()Lcom/google/android/gms/internal/zzfhe;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zza(Lcom/google/android/gms/internal/zzffg;Lcom/google/android/gms/internal/zzfgx;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzffg;",
            "Lcom/google/android/gms/internal/zzfgx<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfgx;->zzpio:Lcom/google/android/gms/internal/zzfiy;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/zzffq;->zza(Lcom/google/android/gms/internal/zzffg;Lcom/google/android/gms/internal/zzfiy;ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/zzfgx;->zzpiq:Lcom/google/android/gms/internal/zzfiy;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzffq;->zza(Lcom/google/android/gms/internal/zzffg;Lcom/google/android/gms/internal/zzfiy;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzffg;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzffg;",
            "ITK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/zzffg;->zzz(II)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzfgv;->zzpin:Lcom/google/android/gms/internal/zzfgx;

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/zzfgv;->zza(Lcom/google/android/gms/internal/zzfgx;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzffg;->zzld(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzfgv;->zzpin:Lcom/google/android/gms/internal/zzfgx;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzfgv;->zza(Lcom/google/android/gms/internal/zzffg;Lcom/google/android/gms/internal/zzfgx;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfgy;Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzffm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzfgy<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/zzffb;",
            "Lcom/google/android/gms/internal/zzffm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcwi()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzffb;->zzks(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfgv;->zzpin:Lcom/google/android/gms/internal/zzfgx;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzfgx;->zzpip:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfgv;->zzpin:Lcom/google/android/gms/internal/zzfgx;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzfgx;->zzjxd:Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvt()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfgv;->zzpin:Lcom/google/android/gms/internal/zzfgx;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzfgx;->zzpio:Lcom/google/android/gms/internal/zzfiy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzfiy;->zzdae()I

    move-result v4

    const/16 v5, 0x8

    or-int/2addr v4, v5

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfgv;->zzpin:Lcom/google/android/gms/internal/zzfgx;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzfgx;->zzpio:Lcom/google/android/gms/internal/zzfiy;

    invoke-static {p2, p3, v3, v1}, Lcom/google/android/gms/internal/zzfgv;->zza(Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzffm;Lcom/google/android/gms/internal/zzfiy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzfgv;->zzpin:Lcom/google/android/gms/internal/zzfgx;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzfgx;->zzpiq:Lcom/google/android/gms/internal/zzfiy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzfiy;->zzdae()I

    move-result v4

    const/16 v5, 0x10

    or-int/2addr v4, v5

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfgv;->zzpin:Lcom/google/android/gms/internal/zzfgx;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzfgx;->zzpiq:Lcom/google/android/gms/internal/zzfiy;

    invoke-static {p2, p3, v3, v2}, Lcom/google/android/gms/internal/zzfgv;->zza(Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzffm;Lcom/google/android/gms/internal/zzfiy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/zzffb;->zzkq(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/zzffb;->zzkp(I)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzffb;->zzkt(I)V

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzfgy;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzffg;->zzlg(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgv;->zzpin:Lcom/google/android/gms/internal/zzfgx;

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/zzfgv;->zza(Lcom/google/android/gms/internal/zzfgx;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzffg;->zzln(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method
