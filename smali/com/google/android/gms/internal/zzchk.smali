.class public final Lcom/google/android/gms/internal/zzchk;
.super Lcom/google/android/gms/internal/zzcjl;


# static fields
.field private static zzjbq:[Ljava/lang/String;

.field private static zzjbr:[Ljava/lang/String;

.field private static zzjbs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zziwg:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzchk;->zzjbq:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Param;->zziwi:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzchk;->zzjbr:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zziwn:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzchk;->zzjbs:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjl;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    return-void
.end method

.method private static zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    :goto_2
    array-length v0, p1

    if-ge v2, v0, :cond_4

    aget-object v0, p1, v2

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzclq;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    monitor-enter p3

    :try_start_0
    aget-object p0, p3, v2

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p2, v2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v2

    :cond_2
    aget-object p0, p3, v2

    monitor-exit p3

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzclt;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "complement"

    iget-object v1, p3, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "param_name"

    iget-object v1, p3, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzchk;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, p2, 0x1

    const-string v1, "string_filter"

    iget-object v2, p3, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    if-eqz v2, :cond_4

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/google/android/gms/internal/zzclw;->zzjko:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, "UNKNOWN_MATCH_TYPE"

    iget-object v3, v2, Lcom/google/android/gms/internal/zzclw;->zzjko:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "IN_LIST"

    goto :goto_0

    :pswitch_1
    const-string v1, "EXACT"

    goto :goto_0

    :pswitch_2
    const-string v1, "PARTIAL"

    goto :goto_0

    :pswitch_3
    const-string v1, "ENDS_WITH"

    goto :goto_0

    :pswitch_4
    const-string v1, "BEGINS_WITH"

    goto :goto_0

    :pswitch_5
    const-string v1, "REGEXP"

    :goto_0
    const-string v3, "match_type"

    invoke-static {p1, v0, v3, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v1, "expression"

    iget-object v3, v2, Lcom/google/android/gms/internal/zzclw;->zzjkp:Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "case_sensitive"

    iget-object v3, v2, Lcom/google/android/gms/internal/zzclw;->zzjkq:Ljava/lang/Boolean;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/google/android/gms/internal/zzclw;->zzjkr:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v1, "expression_list {\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/google/android/gms/internal/zzclw;->zzjkr:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    add-int/lit8 v5, v0, 0x2

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "}\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v1, "}\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "number_filter"

    iget-object p3, p3, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzclu;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo p2, "}\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzclu;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " {\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p4, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    if-eqz p3, :cond_1

    const-string p3, "UNKNOWN_COMPARISON_TYPE"

    iget-object v0, p4, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p3, "BETWEEN"

    goto :goto_0

    :pswitch_1
    const-string p3, "EQUAL"

    goto :goto_0

    :pswitch_2
    const-string p3, "GREATER_THAN"

    goto :goto_0

    :pswitch_3
    const-string p3, "LESS_THAN"

    :goto_0
    const-string v0, "comparison_type"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string p3, "match_as_float"

    iget-object v0, p4, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string p3, "comparison_value"

    iget-object v0, p4, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string p3, "min_comparison_value"

    iget-object v0, p4, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string p3, "max_comparison_value"

    iget-object p4, p4, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo p2, "}\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzcmf;)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/google/android/gms/internal/zzcmf;->zzjmq:[J

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    add-int/lit8 p2, p1, 0x1

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "results: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/google/android/gms/internal/zzcmf;->zzjmq:[J

    array-length v2, p2

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-wide v5, p2, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_1

    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object p2, p3, Lcom/google/android/gms/internal/zzcmf;->zzjmp:[J

    if-eqz p2, :cond_6

    add-int/lit8 p2, p1, 0x1

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "status: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/google/android/gms/internal/zzcmf;->zzjmp:[J

    array-length p3, p2

    move v2, v1

    :goto_1
    if-ge v1, p3, :cond_5

    aget-wide v3, p2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-eqz v2, :cond_4

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo p1, "}\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcma;)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    :cond_0
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p3, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "audience_membership {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "audience_id"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "new_audience"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "current_data"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzcmf;)V

    const-string v3, "previous_data"

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzcmf;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v1, "}\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcmb;)V
    .locals 10

    if-nez p3, :cond_0

    return-void

    :cond_0
    array-length p2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_4

    aget-object v2, p3, v1

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v4, "event {\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "name"

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "timestamp_millis"

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "previous_timestamp_millis"

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlj:Ljava/lang/Long;

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "count"

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcmb;->count:Ljava/lang/Integer;

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    if-eqz v2, :cond_2

    array-length v4, v2

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    if-eqz v6, :cond_1

    const/4 v7, 0x3

    invoke-static {p1, v7}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v8, "param {\n"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "name"

    iget-object v9, v6, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/zzchk;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v7, v8, v9}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v8, "string_value"

    iget-object v9, v6, Lcom/google/android/gms/internal/zzcmc;->zzgcc:Ljava/lang/String;

    invoke-static {p1, v7, v8, v9}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v8, "int_value"

    iget-object v9, v6, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    invoke-static {p1, v7, v8, v9}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v8, "double_value"

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcmc;->zzjjl:Ljava/lang/Double;

    invoke-static {p1, v7, v8, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v7}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v6, "}\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v2, "}\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcmg;)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    :cond_0
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p3, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "user_property {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "set_timestamp_millis"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcmg;->zzjms:Ljava/lang/Long;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "name"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcmg;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "string_value"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcmg;->zzgcc:Ljava/lang/String;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "int_value"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcmg;->zzjll:Ljava/lang/Long;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "double_value"

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcmg;->zzjjl:Ljava/lang/Double;

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v1, "}\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final zzazc()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchk;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzchm;->zzae(I)Z

    move-result v0

    return v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzcgx;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgx;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzchk;->zzx(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzcgv;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgv;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{appId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgv;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgv;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgv;->zzizj:Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzchk;->zzb(Lcom/google/android/gms/internal/zzcgx;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzcls;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filter_id"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "event_name"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "event_count_filter"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzclu;)V

    const-string v1, "  filters {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    array-length v1, p1

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, p1, v3

    const/4 v5, 0x2

    invoke-direct {p0, v0, v5, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzclt;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo p1, "}\n}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzclv;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filter_id"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclv;->zzjjw:Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "property_name"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclv;->zzjkm:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzclv;->zzjkn:Lcom/google/android/gms/internal/zzclt;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzclt;)V

    const-string/jumbo p1, "}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzcmd;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nbatch {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v5, "bundle {\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "protocol_version"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjlo:Ljava/lang/Integer;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "platform"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjlw:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "gmp_version"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjma:Ljava/lang/Long;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "uploading_gmp_version"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjmb:Ljava/lang/Long;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "config_version"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjmn:Ljava/lang/Long;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "gmp_app_id"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzixs:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "app_id"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "app_version"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzifm:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "app_version_major"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjmj:Ljava/lang/Integer;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "firebase_instance_id"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zziya:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "dev_cert_hash"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjmf:Ljava/lang/Long;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "app_store"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzixt:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "upload_timestamp_millis"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjlr:Ljava/lang/Long;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "start_timestamp_millis"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "end_timestamp_millis"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "previous_bundle_start_timestamp_millis"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjlu:Ljava/lang/Long;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "previous_bundle_end_timestamp_millis"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjlv:Ljava/lang/Long;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "app_instance_id"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjme:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "resettable_device_id"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "device_id"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjmm:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "limited_ad_tracking"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjmd:Ljava/lang/Boolean;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "os_version"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzdb:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "device_model"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjlx:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "user_default_language"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjly:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "time_zone_offset_minutes"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjlz:Ljava/lang/Integer;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "bundle_sequential_index"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjmg:Ljava/lang/Integer;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "service_upload"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjmh:Ljava/lang/Boolean;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "health_monitor"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzixw:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v3, Lcom/google/android/gms/internal/zzcme;->zzfkk:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    const-string v5, "android_id"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzfkk:Ljava/lang/Long;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v5, v3, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcmg;)V

    iget-object v5, v3, Lcom/google/android/gms/internal/zzcme;->zzjmi:[Lcom/google/android/gms/internal/zzcma;

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcma;)V

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    invoke-direct {p0, v0, v4, v3}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcmb;)V

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v3, "}\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    const-string/jumbo p1, "}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzawi()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawi()V

    return-void
.end method

.method public final bridge synthetic zzawj()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawj()V

    return-void
.end method

.method public final bridge synthetic zzawk()Lcom/google/android/gms/internal/zzcgd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawk()Lcom/google/android/gms/internal/zzcgd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawl()Lcom/google/android/gms/internal/zzcgk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawl()Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawm()Lcom/google/android/gms/internal/zzcjn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawn()Lcom/google/android/gms/internal/zzchh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawo()Lcom/google/android/gms/internal/zzcgu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawp()Lcom/google/android/gms/internal/zzckg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawq()Lcom/google/android/gms/internal/zzckc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawq()Lcom/google/android/gms/internal/zzckc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawr()Lcom/google/android/gms/internal/zzchi;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawr()Lcom/google/android/gms/internal/zzchi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaws()Lcom/google/android/gms/internal/zzcgo;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawt()Lcom/google/android/gms/internal/zzchk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawu()Lcom/google/android/gms/internal/zzclq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawv()Lcom/google/android/gms/internal/zzcig;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaww()Lcom/google/android/gms/internal/zzclf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaww()Lcom/google/android/gms/internal/zzclf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawx()Lcom/google/android/gms/internal/zzcih;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawy()Lcom/google/android/gms/internal/zzchm;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawz()Lcom/google/android/gms/internal/zzchx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaxa()Lcom/google/android/gms/internal/zzcgn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaxa()Lcom/google/android/gms/internal/zzcgn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzaxz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final zzb(Lcom/google/android/gms/internal/zzcha;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcha;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzchk;->zzb(Lcom/google/android/gms/internal/zzcgx;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zzjh(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zziwh:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zziwg:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzchk;->zzjbq:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zzji(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Param;->zziwj:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$Param;->zziwi:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzchk;->zzjbr:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zzjj(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const-string v0, "_exp_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "experiment_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zziwo:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zziwn:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzchk;->zzjbs:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzve()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzve()V

    return-void
.end method

.method public final bridge synthetic zzws()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method

.method protected final zzx(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ", "

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v3, "Bundle[{"

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzchk;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "}]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
